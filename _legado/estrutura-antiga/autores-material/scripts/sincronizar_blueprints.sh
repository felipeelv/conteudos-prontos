#!/usr/bin/env bash
#
# Baixa somente a pasta de blueprints do repositório material-didatico
# e a espelha no caminho usado pelos scripts dos autores.

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"

REPO_URL="${BLUEPRINT_REPO_URL:-https://github.com/felipeelv/material-blueprints.git}"
REMOTE_PATH="${BLUEPRINT_REMOTE_PATH:-blueprints}"
DEST_DIR="${BLUEPRINT_DEST_DIR:-$PROJECT_ROOT/PRODUCAO/Blueprint}"
CACHE_DIR="${BLUEPRINT_CACHE_DIR:-$PROJECT_ROOT/PRODUCAO/.material-blueprints-cache}"
BRANCH="${BLUEPRINT_BRANCH:-}"
DRY_RUN=0

usage() {
  cat <<'USAGE'
Baixa somente a pasta de blueprints do repositório material-blueprints
e a espelha no caminho usado pelos scripts dos autores.

Uso:
  ./scripts/sincronizar_blueprints.sh
  ./scripts/sincronizar_blueprints.sh --branch main
  BLUEPRINT_DEST_DIR=/outro/caminho/Blueprint ./scripts/sincronizar_blueprints.sh

Opções:
  --repo URL          Repositório Git com a pasta de blueprints.
  --branch NOME       Branch/tag/ref para sincronizar. Se omitido, usa o default remoto.
  --remote-path PATH  Pasta no repositório remoto. Padrão: blueprints.
  --dest PATH         Destino local. Padrão: PRODUCAO/Blueprint.
  --cache PATH        Checkout cache local. Padrão: PRODUCAO/.material-didatico-blueprints.
  --dry-run           Mostra o plano sem baixar nem alterar arquivos.
  -h, --help          Mostra esta ajuda.

Variáveis equivalentes:
  BLUEPRINT_REPO_URL, BLUEPRINT_BRANCH, BLUEPRINT_REMOTE_PATH,
  BLUEPRINT_DEST_DIR, BLUEPRINT_CACHE_DIR
USAGE
}

while [[ $# -gt 0 ]]; do
  case "$1" in
    --repo) shift; REPO_URL="$1"; shift ;;
    --branch) shift; BRANCH="$1"; shift ;;
    --remote-path) shift; REMOTE_PATH="$1"; shift ;;
    --dest) shift; DEST_DIR="$1"; shift ;;
    --cache) shift; CACHE_DIR="$1"; shift ;;
    --dry-run) DRY_RUN=1; shift ;;
    -h|--help) usage; exit 0 ;;
    *) echo "Argumento desconhecido: $1" >&2; usage; exit 1 ;;
  esac
done

command -v git >/dev/null 2>&1 || { echo "Erro: git não encontrado no PATH." >&2; exit 1; }
command -v rsync >/dev/null 2>&1 || { echo "Erro: rsync não encontrado no PATH." >&2; exit 1; }

echo "Sincronização de blueprints"
echo "  Repositório: $REPO_URL"
if [[ -n "$BRANCH" ]]; then
  echo "  Ref:         $BRANCH"
else
  echo "  Ref:         default remoto"
fi
echo "  Pasta remota: $REMOTE_PATH"
echo "  Cache:        $CACHE_DIR"
echo "  Destino:      $DEST_DIR"

if [[ "$DRY_RUN" -eq 1 ]]; then
  echo "dry-run: nada foi alterado."
  exit 0
fi

mkdir -p "$(dirname "$CACHE_DIR")" "$(dirname "$DEST_DIR")"

if [[ ! -d "$CACHE_DIR/.git" ]]; then
  echo "Criando checkout sparse..."
  if [[ -n "$BRANCH" ]]; then
    git clone --filter=blob:none --sparse --branch "$BRANCH" "$REPO_URL" "$CACHE_DIR"
  else
    git clone --filter=blob:none --sparse "$REPO_URL" "$CACHE_DIR"
  fi
else
  echo "Atualizando checkout sparse..."
  git -C "$CACHE_DIR" remote set-url origin "$REPO_URL"
  if [[ -n "$BRANCH" ]]; then
    git -C "$CACHE_DIR" fetch --depth=1 origin "$BRANCH"
    git -C "$CACHE_DIR" checkout --detach FETCH_HEAD
  else
    git -C "$CACHE_DIR" fetch --depth=1 origin
    git -C "$CACHE_DIR" pull --ff-only
  fi
fi

git -C "$CACHE_DIR" sparse-checkout set "$REMOTE_PATH"

SOURCE_DIR="$CACHE_DIR/$REMOTE_PATH"
if [[ ! -d "$SOURCE_DIR" ]]; then
  echo "Erro: pasta remota não encontrada no checkout: $REMOTE_PATH" >&2
  echo "Verifique se o caminho correto no repositório é 'blueprints'." >&2
  exit 1
fi

mkdir -p "$DEST_DIR"
rsync -a --delete "$SOURCE_DIR"/ "$DEST_DIR"/

echo "Blueprints sincronizados em: $DEST_DIR"
find "$DEST_DIR" -maxdepth 2 -mindepth 1 -type d | sort | sed 's/^/  - /'
