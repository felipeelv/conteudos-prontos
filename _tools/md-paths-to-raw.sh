#!/usr/bin/env bash
# Substitui paths relativos de imagens em arquivos .md por URLs raw do GitHub
# Uso: ./md-paths-to-raw.sh <arquivo.md ou diretório>
set -euo pipefail

REPO_BASE="https://raw.githubusercontent.com/felipeelv/conteudos-prontos/main"
ROOT="$(cd "$(dirname "$0")/.." && pwd)"

if [ $# -lt 1 ]; then
  echo "Uso: $0 <arquivo.md ou diretório>" >&2
  exit 1
fi

run_python() {
  python3 - "$ROOT" "$REPO_BASE" "$@" <<'PYEOF'
import re, sys, os, urllib.parse

root, base, *targets = sys.argv[1:]

def process(md_file):
    md_dir = os.path.dirname(os.path.abspath(md_file))
    with open(md_file, 'r', encoding='utf-8') as f:
        content = f.read()

    def replace(m):
        alt, path = m.group(1), m.group(2).strip()
        if path.startswith(('http://', 'https://', 'data:')):
            return m.group(0)
        abs_path = os.path.normpath(os.path.join(md_dir, path))
        rel = os.path.relpath(abs_path, root)
        url = '/'.join(urllib.parse.quote(p) for p in rel.split(os.sep))
        return f'![{alt}]({base}/{url})'

    new = re.sub(r'!\[([^\]]*)\]\(([^)]+)\)', replace, content)
    if new != content:
        with open(md_file, 'w', encoding='utf-8') as f:
            f.write(new)
        print(f"✓ {os.path.relpath(md_file, root)}")

files = []
for t in targets:
    if os.path.isfile(t) and t.endswith('.md'):
        files.append(t)
    elif os.path.isdir(t):
        for dp, _, fns in os.walk(t):
            # Pula pastas internas (_autor, _blueprints, _tikz, _legado etc.)
            if any(p.startswith('_') for p in os.path.relpath(dp, t).split(os.sep)):
                continue
            for fn in fns:
                # Pula arquivos de documentação/meta
                if fn in ('CLAUDE.md', 'README.md') or fn.startswith('_'):
                    continue
                if fn.endswith('.md'):
                    files.append(os.path.join(dp, fn))

for f in files:
    process(f)
PYEOF
}

run_python "$@"
