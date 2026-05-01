#!/usr/bin/env bash
#
# Recebe um payload de blueprint publicado, executa o autor correto e publica o
# conteudo final no repositorio conteudos-prontos.

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"
cd "$PROJECT_ROOT"

DISCIPLINA="${DISCIPLINA:-}"
ANO="${ANO:-}"
UNIDADE="${UNIDADE:-}"
BLUEPRINT_PATH="${BLUEPRINT_PATH:-}"
BLUEPRINT_SHA="${BLUEPRINT_SHA:-}"
SOURCE_REPO="${SOURCE_REPO:-felipeelv/material-blueprints}"
TARGET_REPO="${TARGET_REPO:-felipeelv/conteudos-prontos}"
EXECUTOR="${EXECUTOR:-claude}"
FORCE="${FORCE:-0}"
BLUEPRINT_REPO_DIR="${BLUEPRINT_REPO_DIR:-$PROJECT_ROOT/PRODUCAO/Blueprint}"
CONTEUDOS_REPO_DIR="${CONTEUDOS_REPO_DIR:-$PROJECT_ROOT/PRODUCAO/CONTEUDOS PRONTOS}"

usage() {
  cat <<'USAGE'
Uso:
  scripts/run_autor_from_blueprint.sh \
    --disciplina "Ciencias" \
    --ano "5ano" \
    --unidade "unidade-5-alimentacao-e-saude" \
    --blueprint-path "blueprints/Ciencias/5ano/unidade-5-alimentacao-e-saude" \
    --blueprint-sha "SHA"

Variaveis equivalentes:
  DISCIPLINA, ANO, UNIDADE, BLUEPRINT_PATH, BLUEPRINT_SHA,
  SOURCE_REPO, TARGET_REPO, EXECUTOR, FORCE
USAGE
}

while [[ $# -gt 0 ]]; do
  case "$1" in
    --disciplina) shift; DISCIPLINA="$1"; shift ;;
    --ano) shift; ANO="$1"; shift ;;
    --unidade) shift; UNIDADE="$1"; shift ;;
    --blueprint-path) shift; BLUEPRINT_PATH="$1"; shift ;;
    --blueprint-sha) shift; BLUEPRINT_SHA="$1"; shift ;;
    --source-repo) shift; SOURCE_REPO="$1"; shift ;;
    --target-repo) shift; TARGET_REPO="$1"; shift ;;
    --executor) shift; EXECUTOR="$1"; shift ;;
    --force) FORCE=1; shift ;;
    -h|--help) usage; exit 0 ;;
    *) echo "Argumento desconhecido: $1" >&2; usage; exit 1 ;;
  esac
done

require() {
  local value="$1"
  local name="$2"
  [[ -n "$value" ]] || { echo "Erro: $name e obrigatorio." >&2; exit 1; }
}

require "$DISCIPLINA" "DISCIPLINA"
require "$ANO" "ANO"
require "$UNIDADE" "UNIDADE"
require "$BLUEPRINT_PATH" "BLUEPRINT_PATH"
require "$BLUEPRINT_SHA" "BLUEPRINT_SHA"

relative_to_root() {
  local path="$1"
  case "$path" in
    "$PROJECT_ROOT"/*) printf '%s\n' "${path#"$PROJECT_ROOT"/}" ;;
    *) return 1 ;;
  esac
}

ensure_submodule_or_git_checkout() {
  local repo_dir="$1"
  local label="$2"
  local rel_path=""

  if [[ -d "$repo_dir/.git" || -f "$repo_dir/.git" ]]; then
    return 0
  fi

  if rel_path="$(relative_to_root "$repo_dir" 2>/dev/null)" && git config --file .gitmodules --get "submodule.$rel_path.url" >/dev/null 2>&1; then
    git submodule update --init --recursive -- "$rel_path"
    return 0
  fi

  echo "Erro: $label nao e um checkout Git: $repo_dir" >&2
  exit 1
}

case "$DISCIPLINA" in
  "Biologia") AUTOR="autor_biologia" ;;
  "Ciencias") AUTOR="autor_ciencias" ;;
  "Estudos Sociais") AUTOR="autor_estudos-sociais" ;;
  "Historia") AUTOR="autor_historia" ;;
  "Filosofia") AUTOR="autor_filosofia" ;;
  "Sociologia") AUTOR="autor_sociologia" ;;
  "Fisica") AUTOR="autor_fisica" ;;
  "Geografia") AUTOR="autor_geografia" ;;
  "Matematica") AUTOR="autor_matematica" ;;
  "Geometria") AUTOR="autor_geometria" ;;
  "Estatistica e Educacao Financeira") AUTOR="autor_estatistica-e-educacao-financeira" ;;
  "Portugues 1") AUTOR="autor_portugues-1" ;;
  "Portugues 2") AUTOR="autor_portugues-2" ;;
  "Quimica") AUTOR="autor_quimica" ;;
  *) echo "Erro: disciplina sem autor mapeado: $DISCIPLINA" >&2; exit 1 ;;
esac

AUTOR_SCRIPT="$PROJECT_ROOT/autores/$AUTOR/scripts/criar_capitulos.sh"
[[ -f "$AUTOR_SCRIPT" ]] || {
  echo "Erro: script do autor nao encontrado: $AUTOR_SCRIPT" >&2
  exit 1
}

echo "Automacao editorial"
echo "  Disciplina:      $DISCIPLINA"
echo "  Ano:             $ANO"
echo "  Unidade:         $UNIDADE"
echo "  Blueprint path:  $BLUEPRINT_PATH"
echo "  Blueprint SHA:   $BLUEPRINT_SHA"
echo "  Autor:           $AUTOR"
echo "  Executor:        $EXECUTOR"

ensure_submodule_or_git_checkout "$BLUEPRINT_REPO_DIR" "material-blueprints"
ensure_submodule_or_git_checkout "$CONTEUDOS_REPO_DIR" "conteudos-prontos"

git -C "$BLUEPRINT_REPO_DIR" fetch origin "$BLUEPRINT_SHA"
git -C "$BLUEPRINT_REPO_DIR" checkout --detach "$BLUEPRINT_SHA"

git -C "$CONTEUDOS_REPO_DIR" checkout main
git -C "$CONTEUDOS_REPO_DIR" pull --ff-only origin main

BLUEPRINT_DIR="$BLUEPRINT_REPO_DIR/$BLUEPRINT_PATH"
[[ -f "$BLUEPRINT_DIR/blueprint_unidade.md" ]] || {
  echo "Erro: blueprint_unidade.md ausente em $BLUEPRINT_DIR" >&2
  exit 1
}

AUTHOR_ARGS=(-d "$DISCIPLINA" -a "$ANO" -u "$UNIDADE" --executor "$EXECUTOR" --yes)
if [[ "$FORCE" == "1" || "$FORCE" == "true" ]]; then
  AUTHOR_ARGS+=(--force)
fi

AUTO_PUBLISH=0 "$AUTOR_SCRIPT" "${AUTHOR_ARGS[@]}"

OUTPUT_DIR="$CONTEUDOS_REPO_DIR/$DISCIPLINA/$ANO/$UNIDADE"
COUNT=$(find "$OUTPUT_DIR" -maxdepth 1 -name 'capitulo_*.md' 2>/dev/null | wc -l | tr -d ' ')
if [[ "$COUNT" -eq 0 ]]; then
  echo "Erro: autor terminou sem gerar capitulos em $OUTPUT_DIR" >&2
  exit 1
fi

OUTPUT_PARENT="$CONTEUDOS_REPO_DIR/$DISCIPLINA/$ANO"
while IFS= read -r stale_dir; do
  [[ "$stale_dir" != "$OUTPUT_DIR" ]] || continue

  STALE_COUNT=$(find "$stale_dir" -maxdepth 1 -name 'capitulo_*.md' 2>/dev/null | wc -l | tr -d ' ')
  if [[ "$STALE_COUNT" -eq 0 && ! -f "$stale_dir/metadata.json" ]]; then
    STALE_REL="${stale_dir#"$CONTEUDOS_REPO_DIR"/}"
    echo "Removendo placeholder obsoleto do conteudos-prontos: $STALE_REL"
    git -C "$CONTEUDOS_REPO_DIR" rm -r -- "$STALE_REL" >/dev/null
  fi
done < <(find "$OUTPUT_PARENT" -maxdepth 1 -mindepth 1 -type d -name "$UNIDADE-*" 2>/dev/null | sort)

GENERATED_AT="$(date -u +%Y-%m-%dT%H:%M:%SZ)"
cat > "$OUTPUT_DIR/metadata.json" <<JSON
{
  "disciplina": "$DISCIPLINA",
  "ano": "$ANO",
  "unidade": "$UNIDADE",
  "blueprint_repo": "$SOURCE_REPO",
  "blueprint_sha": "$BLUEPRINT_SHA",
  "blueprint_path": "$BLUEPRINT_PATH",
  "autor": "$AUTOR",
  "generated_at": "$GENERATED_AT"
}
JSON

git -C "$CONTEUDOS_REPO_DIR" add "$DISCIPLINA/$ANO/$UNIDADE"

if git -C "$CONTEUDOS_REPO_DIR" diff --cached --quiet -- "$DISCIPLINA/$ANO/$UNIDADE"; then
  echo "Nenhuma alteracao nova para publicar em conteudos-prontos."
  exit 0
fi

git -C "$CONTEUDOS_REPO_DIR" commit -m "Add conteudo $DISCIPLINA/$ANO/$UNIDADE" \
  -m "Origem: $SOURCE_REPO@$BLUEPRINT_SHA" \
  -m "Autor: $AUTOR"
git -C "$CONTEUDOS_REPO_DIR" push origin main

echo "Conteudo publicado em $TARGET_REPO: $DISCIPLINA/$ANO/$UNIDADE ($COUNT capitulos)."
