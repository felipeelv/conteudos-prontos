#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
TMP_DIR="$(mktemp -d)"
trap 'rm -rf "$TMP_DIR"' EXIT

BLUEPRINT_REPO="$TMP_DIR/material-blueprints"
RUNNER_LOG="$TMP_DIR/run_autor_args.txt"

mkdir -p "$BLUEPRINT_REPO/blueprints/Ciencias/8ano/unidade-5-reproducao-e-desenvolvimento"
cat > "$BLUEPRINT_REPO/blueprints/Ciencias/8ano/unidade-5-reproducao-e-desenvolvimento/blueprint_unidade.md" <<'MD'
# Unidade 5
MD
cat > "$BLUEPRINT_REPO/blueprints/Ciencias/8ano/unidade-5-reproducao-e-desenvolvimento/blueprint_capitulo_01.md" <<'MD'
# Capitulo 1
MD

git -C "$BLUEPRINT_REPO" init -q
git -C "$BLUEPRINT_REPO" config user.name "Test"
git -C "$BLUEPRINT_REPO" config user.email "test@example.invalid"
git -C "$BLUEPRINT_REPO" add blueprints
git -C "$BLUEPRINT_REPO" commit -q -m "Add blueprint"
EXPECTED_SHA="$(git -C "$BLUEPRINT_REPO" rev-parse HEAD)"

STUB="$TMP_DIR/run_autor_from_blueprint.sh"
cat > "$STUB" <<'SH'
#!/usr/bin/env bash
printf '%s\n' "$@" > "$RUNNER_LOG"
SH
chmod +x "$STUB"

RUNNER_LOG="$RUNNER_LOG" \
BLUEPRINT_REPO_DIR="$BLUEPRINT_REPO" \
RUN_AUTOR_SCRIPT="$STUB" \
"$ROOT_DIR/scripts/gerar_conteudo_local.sh" \
  -d "Ciencias" \
  -a "8ano" \
  -u "unidade-5" \
  --executor codex

grep -qx -- "--disciplina" "$RUNNER_LOG"
grep -qx -- "Ciencias" "$RUNNER_LOG"
grep -qx -- "--ano" "$RUNNER_LOG"
grep -qx -- "8ano" "$RUNNER_LOG"
grep -qx -- "--unidade" "$RUNNER_LOG"
grep -qx -- "unidade-5-reproducao-e-desenvolvimento" "$RUNNER_LOG"
grep -qx -- "--blueprint-path" "$RUNNER_LOG"
grep -qx -- "blueprints/Ciencias/8ano/unidade-5-reproducao-e-desenvolvimento" "$RUNNER_LOG"
grep -qx -- "--blueprint-sha" "$RUNNER_LOG"
grep -qx -- "$EXPECTED_SHA" "$RUNNER_LOG"
grep -qx -- "--executor" "$RUNNER_LOG"
grep -qx -- "codex" "$RUNNER_LOG"

echo "ok"
