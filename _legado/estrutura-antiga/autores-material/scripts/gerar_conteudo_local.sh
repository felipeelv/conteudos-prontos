#!/usr/bin/env bash
#
# Runner local para gerar conteudo final a partir de blueprints publicados.
# Resolve a unidade por prefixo em material-blueprints e delega a autoria para
# scripts/run_autor_from_blueprint.sh.

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"
cd "$PROJECT_ROOT"

DISCIPLINA=""
ANO=""
UNIDADE_PREFIX=""
EXECUTOR=""
FORCE=0
DRY_RUN=0

BLUEPRINT_REPO_DIR="${BLUEPRINT_REPO_DIR:-$PROJECT_ROOT/PRODUCAO/Blueprint}"
CONTEUDOS_REPO_DIR="${CONTEUDOS_REPO_DIR:-$PROJECT_ROOT/PRODUCAO/CONTEUDOS PRONTOS}"
RUN_AUTOR_SCRIPT="${RUN_AUTOR_SCRIPT:-$PROJECT_ROOT/scripts/run_autor_from_blueprint.sh}"

usage() {
  cat <<'USAGE'
Uso:
  scripts/gerar_conteudo_local.sh \
    -d "Ciencias" \
    -a "8ano" \
    -u "unidade-5" \
    --executor codex

Opcoes:
  -d, --disciplina NOME  Disciplina em blueprints/<Disciplina>.
  -a, --ano ANO          Ano/serie em blueprints/<Disciplina>/<Ano>.
  -u, --unidade PREFIXO  Prefixo ou nome completo da unidade.
  --executor COMANDO     Executor LLM: codex, claude ou outro compativel.
  --force                Repassa --force para o autor.
  --dry-run              Sincroniza e resolve o payload, mas nao executa o autor.
  -h, --help             Mostra esta ajuda.

Variaveis uteis:
  BLUEPRINT_REPO_DIR     Clone/submodule local de material-blueprints.
  CONTEUDOS_REPO_DIR     Clone/submodule local de conteudos-prontos.
  RUN_AUTOR_SCRIPT       Script central a ser chamado.
USAGE
}

while [[ $# -gt 0 ]]; do
  case "$1" in
    -d|--disciplina) shift; DISCIPLINA="${1:-}"; shift ;;
    -a|--ano) shift; ANO="${1:-}"; shift ;;
    -u|--unidade) shift; UNIDADE_PREFIX="${1:-}"; shift ;;
    --executor) shift; EXECUTOR="${1:-}"; shift ;;
    --force) FORCE=1; shift ;;
    --dry-run) DRY_RUN=1; shift ;;
    -h|--help) usage; exit 0 ;;
    *) echo "Argumento desconhecido: $1" >&2; usage; exit 1 ;;
  esac
done

require() {
  local value="$1"
  local name="$2"
  [[ -n "$value" ]] || { echo "Erro: $name e obrigatorio." >&2; exit 1; }
}

relative_to_root() {
  local path="$1"
  case "$path" in
    "$PROJECT_ROOT"/*) printf '%s\n' "${path#"$PROJECT_ROOT"/}" ;;
    *) return 1 ;;
  esac
}

ensure_git_checkout() {
  local repo_dir="$1"
  local repo_name="$2"
  local env_url_name="$3"
  local repo_url="${!env_url_name:-}"
  local rel_path=""

  if [[ -d "$repo_dir/.git" || -f "$repo_dir/.git" ]]; then
    return 0
  fi

  if rel_path="$(relative_to_root "$repo_dir" 2>/dev/null)" && git config --file .gitmodules --get "submodule.$rel_path.url" >/dev/null 2>&1; then
    echo "Inicializando submodule $repo_name em $rel_path..."
    git submodule update --init --recursive -- "$rel_path"
    return 0
  fi

  if [[ -n "$repo_url" ]]; then
    echo "Clonando $repo_name em $repo_dir..."
    mkdir -p "$(dirname "$repo_dir")"
    git clone "$repo_url" "$repo_dir"
    return 0
  fi

  echo "Erro: $repo_name nao e um checkout Git: $repo_dir" >&2
  echo "Inicialize o submodule ou informe $env_url_name para clonar." >&2
  exit 1
}

update_git_checkout() {
  local repo_dir="$1"
  local repo_name="$2"

  ensure_git_checkout "$repo_dir" "$repo_name" "${repo_name}_REPO_URL"

  if ! git -C "$repo_dir" remote get-url origin >/dev/null 2>&1; then
    echo "Aviso: $repo_name sem remoto origin; usando checkout local atual."
    return 0
  fi

  echo "Atualizando $repo_name..."
  git -C "$repo_dir" fetch --all --prune

  local branch
  branch="$(git -C "$repo_dir" symbolic-ref --short -q HEAD || true)"
  if [[ -n "$branch" ]]; then
    git -C "$repo_dir" pull --ff-only
  else
    local default_ref
    default_ref="$(git -C "$repo_dir" symbolic-ref --short -q refs/remotes/origin/HEAD || true)"
    if [[ -z "$default_ref" ]]; then
      git -C "$repo_dir" remote set-head origin -a >/dev/null 2>&1 || true
      default_ref="$(git -C "$repo_dir" symbolic-ref --short -q refs/remotes/origin/HEAD || true)"
    fi
    [[ -n "$default_ref" ]] || default_ref="origin/main"
    git -C "$repo_dir" checkout --detach "$default_ref"
  fi
}

require "$DISCIPLINA" "disciplina"
require "$ANO" "ano"
require "$UNIDADE_PREFIX" "unidade"
require "$EXECUTOR" "executor"

command -v git >/dev/null 2>&1 || { echo "Erro: git nao encontrado no PATH." >&2; exit 1; }
[[ -x "$RUN_AUTOR_SCRIPT" ]] || { echo "Erro: script central nao executavel: $RUN_AUTOR_SCRIPT" >&2; exit 1; }

echo "Geracao local de conteudo"
echo "  Disciplina: $DISCIPLINA"
echo "  Ano:        $ANO"
echo "  Unidade:    $UNIDADE_PREFIX"
echo "  Executor:   $EXECUTOR"

update_git_checkout "$BLUEPRINT_REPO_DIR" "BLUEPRINT" "BLUEPRINT_REPO_URL"

BLUEPRINT_SHA="$(git -C "$BLUEPRINT_REPO_DIR" rev-parse HEAD)"

if [[ -d "$BLUEPRINT_REPO_DIR/blueprints" ]]; then
  BLUEPRINT_ROOT="$BLUEPRINT_REPO_DIR/blueprints"
  BLUEPRINT_PATH_PREFIX="blueprints"
else
  BLUEPRINT_ROOT="$BLUEPRINT_REPO_DIR"
  BLUEPRINT_PATH_PREFIX=""
fi

ANO_DIR="$BLUEPRINT_ROOT/$DISCIPLINA/$ANO"
[[ -d "$ANO_DIR" ]] || {
  echo "Erro: ano nao encontrado nos blueprints: $ANO_DIR" >&2
  exit 1
}

declare -a MATCHES=()
if [[ -d "$ANO_DIR/$UNIDADE_PREFIX" ]]; then
  MATCHES=("$ANO_DIR/$UNIDADE_PREFIX")
else
  while IFS= read -r unit_dir; do
    MATCHES+=("$unit_dir")
  done < <(find "$ANO_DIR" -maxdepth 1 -mindepth 1 -type d -name "$UNIDADE_PREFIX*" | sort)
fi

if [[ ${#MATCHES[@]} -eq 0 ]]; then
  echo "Erro: nenhuma unidade encontrada para prefixo '$UNIDADE_PREFIX' em $DISCIPLINA/$ANO." >&2
  exit 1
fi

if [[ ${#MATCHES[@]} -gt 1 ]]; then
  echo "Erro: prefixo '$UNIDADE_PREFIX' encontrou mais de uma unidade. Use o nome completo:" >&2
  printf '  - %s\n' "${MATCHES[@]#$ANO_DIR/}" >&2
  exit 1
fi

BLUEPRINT_DIR="${MATCHES[0]}"
UNIDADE="$(basename "$BLUEPRINT_DIR")"
[[ -f "$BLUEPRINT_DIR/blueprint_unidade.md" ]] || {
  echo "Erro: blueprint_unidade.md ausente em $BLUEPRINT_DIR" >&2
  exit 1
}

if [[ -n "$BLUEPRINT_PATH_PREFIX" ]]; then
  BLUEPRINT_PATH="$BLUEPRINT_PATH_PREFIX/$DISCIPLINA/$ANO/$UNIDADE"
else
  BLUEPRINT_PATH="$DISCIPLINA/$ANO/$UNIDADE"
fi

echo "Payload resolvido"
echo "  Unidade resolvida: $UNIDADE"
echo "  Blueprint path:    $BLUEPRINT_PATH"
echo "  Blueprint SHA:     $BLUEPRINT_SHA"
echo "  Saida esperada:    $CONTEUDOS_REPO_DIR/$DISCIPLINA/$ANO/$UNIDADE"

if [[ "$DRY_RUN" -eq 1 ]]; then
  echo "dry-run: autor nao executado."
  exit 0
fi

AUTHOR_ARGS=(
  --disciplina "$DISCIPLINA"
  --ano "$ANO"
  --unidade "$UNIDADE"
  --blueprint-path "$BLUEPRINT_PATH"
  --blueprint-sha "$BLUEPRINT_SHA"
  --executor "$EXECUTOR"
)

if [[ "$FORCE" -eq 1 ]]; then
  AUTHOR_ARGS+=(--force)
fi

BLUEPRINT_REPO_DIR="$BLUEPRINT_REPO_DIR" \
CONTEUDOS_REPO_DIR="$CONTEUDOS_REPO_DIR" \
"$RUN_AUTOR_SCRIPT" "${AUTHOR_ARGS[@]}"
