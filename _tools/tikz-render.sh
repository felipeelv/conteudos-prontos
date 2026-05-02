#!/usr/bin/env bash
# tikz-render.sh — Renderiza fontes TikZ deste repositório em PNG (e PDF intermediário).
#
# Convenção:
#   <Disciplina>/_tikz/<ano>/<unidade>/<slug>.tex   ← fonte TikZ (apenas o conteúdo TikZ)
#   <Disciplina>/_tikz/build/<ano>/<unidade>/<slug>.png   ← saída renderizada (commitada)
#   <Disciplina>/_tikz/build/<ano>/<unidade>/<slug>.pdf   ← intermediário (gitignored)
#
# Cada .tex deve conter APENAS o conteúdo TikZ. Exemplo mínimo:
#
#   \begin{tikzpicture}
#     \draw[->] (-1,0) -- (4,0) node[right] {$x$};
#     \draw[->] (0,-1) -- (0,3) node[above] {$y$};
#   \end{tikzpicture}
#
# O script envolve o conteúdo com o preâmbulo padrão (_tools/tikz-preamble.tex)
# e compila com pdflatex via classe `standalone` (recorta na bbox).
#
# Uso:
#   ./_tools/tikz-render.sh                        # renderiza tudo desatualizado em todas as disciplinas
#   ./_tools/tikz-render.sh Matematica             # filtra por disciplina
#   ./_tools/tikz-render.sh --all                  # força re-render de tudo
#   ./_tools/tikz-render.sh --check                # apenas lista pendências (exit 1 se houver)
#   ./_tools/tikz-render.sh path/to/arquivo.tex    # renderiza um arquivo específico

set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
PREAMBLE="$ROOT/_tools/tikz-preamble.tex"
DPI=300

# Garante que pdflatex/dvisvgm/pdftoppm estão no PATH (BasicTeX vai para /Library/TeX/texbin)
export PATH="/Library/TeX/texbin:/opt/homebrew/bin:/usr/local/bin:$PATH"

# Modos
MODE="auto"      # auto | all | check | single
FILTER=""        # disciplina ou caminho específico

for arg in "$@"; do
  case "$arg" in
    --all)   MODE="all" ;;
    --check) MODE="check" ;;
    --help|-h)
      sed -n '2,30p' "${BASH_SOURCE[0]}"; exit 0 ;;
    *)
      if [[ -f "$arg" && "$arg" == *.tex ]]; then
        MODE="single"; FILTER="$arg"
      else
        FILTER="$arg"
      fi
      ;;
  esac
done

# Verifica dependências
command -v pdflatex >/dev/null 2>&1 || { echo "❌ pdflatex não encontrado. Instale BasicTeX: brew install --cask basictex"; exit 2; }
command -v pdftoppm >/dev/null 2>&1 || { echo "❌ pdftoppm não encontrado. Instale poppler: brew install poppler"; exit 2; }

# Renderiza um único arquivo .tex → .pdf → .png
render_one() {
  local tex_src="$1"     # caminho absoluto da fonte
  local rel="${tex_src#$ROOT/}"
  # rel = "Matematica/_tikz/4ano/.../slug.tex"
  # disciplina = primeiro segmento, restante depois de _tikz/ vai para build/
  local disciplina="${rel%%/*}"
  local rest="${rel#*/_tikz/}"
  local slug="${rest%.tex}"
  local out_dir="$ROOT/$disciplina/_tikz/build/$(dirname "$slug")"
  local out_pdf="$out_dir/$(basename "$slug").pdf"
  local out_png="$out_dir/$(basename "$slug").png"

  mkdir -p "$out_dir"

  # Cria um .tex temporário que importa o preâmbulo + inclui o conteúdo
  local tmp_tex
  tmp_tex="$(mktemp -t tikz_render_XXXXXX).tex"
  {
    cat "$PREAMBLE"
    echo
    echo "\begin{document}"
    cat "$tex_src"
    echo
    echo "\end{document}"
  } > "$tmp_tex"

  local tmp_dir
  tmp_dir="$(dirname "$tmp_tex")"
  local tmp_base
  tmp_base="$(basename "$tmp_tex" .tex)"

  # Compila
  if pdflatex -interaction=nonstopmode -halt-on-error -output-directory="$tmp_dir" "$tmp_tex" >/dev/null 2>&1; then
    mv "$tmp_dir/$tmp_base.pdf" "$out_pdf"
    pdftoppm -png -r "$DPI" -singlefile "$out_pdf" "${out_png%.png}"
    echo "✅ $rel → $disciplina/_tikz/build/$slug.png"
  else
    echo "❌ Falha ao compilar: $rel"
    pdflatex -interaction=nonstopmode -output-directory="$tmp_dir" "$tmp_tex" 2>&1 | tail -20
    rm -f "$tmp_tex" "$tmp_dir/$tmp_base."{aux,log,out}
    return 1
  fi

  # Limpeza
  rm -f "$tmp_tex" "$tmp_dir/$tmp_base."{aux,log,out}
}

# Verifica se o .tex está mais novo que o .png
needs_render() {
  local tex_src="$1"
  local rel="${tex_src#$ROOT/}"
  local disciplina="${rel%%/*}"
  local rest="${rel#*/_tikz/}"
  local slug="${rest%.tex}"
  local out_png="$ROOT/$disciplina/_tikz/build/$slug.png"
  if [[ ! -f "$out_png" ]]; then return 0; fi
  if [[ "$tex_src" -nt "$out_png" ]]; then return 0; fi
  return 1
}

# Coleta lista de fontes
collect_sources() {
  local pattern="$1"
  if [[ -n "$pattern" && -d "$ROOT/$pattern" ]]; then
    find "$ROOT/$pattern/_tikz" -type f -name '*.tex' -not -path '*/_common/*' -not -path '*/build/*' 2>/dev/null
  else
    find "$ROOT" -type d -name '_tikz' -not -path '*/_legado/*' | while read -r dir; do
      find "$dir" -type f -name '*.tex' -not -path '*/_common/*' -not -path '*/build/*' 2>/dev/null
    done
  fi
}

case "$MODE" in
  single)
    render_one "$(cd "$(dirname "$FILTER")" && pwd)/$(basename "$FILTER")"
    ;;
  check)
    pending=()
    while IFS= read -r src; do
      if needs_render "$src"; then pending+=("${src#$ROOT/}"); fi
    done < <(collect_sources "$FILTER")
    if [[ ${#pending[@]} -eq 0 ]]; then
      echo "✅ Tudo renderizado e atualizado."
      exit 0
    else
      echo "❌ TikZ desatualizado em ${#pending[@]} arquivo(s):"
      printf '   - %s\n' "${pending[@]}"
      echo
      echo "→ rode: ./_tools/tikz-render.sh"
      exit 1
    fi
    ;;
  all)
    while IFS= read -r src; do render_one "$src"; done < <(collect_sources "$FILTER")
    ;;
  auto)
    rendered=0
    while IFS= read -r src; do
      if needs_render "$src"; then render_one "$src"; rendered=$((rendered+1)); fi
    done < <(collect_sources "$FILTER")
    if [[ $rendered -eq 0 ]]; then echo "✅ Nada para renderizar (tudo atualizado)."; fi
    ;;
esac
