#!/usr/bin/env bash
#
# lib_common.sh — funções compartilhadas pelos scripts criar_capitulos.sh
# das pastas autores/<disciplina>/.
#
# Source padrão a partir de cada script de AUTOR:
#
#   AUTORES_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
#   source "$AUTORES_ROOT/_shared/lib_common.sh"
#
# As funções aqui são puras (sem side-effects globais além de variáveis de cor).
# Cada AUTOR define suas próprias variáveis de roteamento (DISCIPLINAS_COBERTAS) e suas próprias validações pós-geração.

# --- Cores ANSI (vazias quando saída não é TTY) ---
if [[ -t 1 ]]; then
  C_RESET="\033[0m"; C_BOLD="\033[1m"
  C_GREEN="\033[32m"; C_RED="\033[31m"
  C_YELLOW="\033[33m"; C_BLUE="\033[34m"; C_DIM="\033[2m"
else
  C_RESET=""; C_BOLD=""; C_GREEN=""; C_RED=""; C_YELLOW=""; C_BLUE=""; C_DIM=""
fi

# --- slugify: normaliza nome de arquivo/log ---
slugify() {
  printf '%s' "$1" \
    | iconv -f UTF-8 -t ASCII//TRANSLIT 2>/dev/null \
    | tr '[:upper:]' '[:lower:]' \
    | sed -E 's/[^a-z0-9]+/-/g; s/^-+//; s/-+$//'
}

# --- prompt_required: pergunta até receber valor não-vazio ---
prompt_required() {
  local var_name="$1"
  local label="$2"
  local value="${!var_name}"
  while [[ -z "$value" ]]; do
    read -r -p "$label: " value
  done
  printf -v "$var_name" '%s' "$value"
}

# --- prompt_with_default: sempre pergunta; flag vira default (Enter aceita) ---
prompt_with_default() {
  local var_name="$1"
  local label="$2"
  local current="${!var_name}"
  local input
  if [[ -n "$current" ]]; then
    read -r -p "$label [$current]: " input
    [[ -n "$input" ]] && current="$input"
  else
    while [[ -z "$current" ]]; do
      read -r -p "$label: " current
    done
  fi
  printf -v "$var_name" '%s' "$current"
}

# --- list_dirs: lista subdiretórios de uma pasta com prefixo "  - " ---
list_dirs() {
  find "$1" -maxdepth 1 -mindepth 1 -type d -exec basename {} \; 2>/dev/null | sort | sed 's/^/  - /'
}

# --- confirm_run: pergunta Y/N final antes de disparar executor ---
# Args: $1 = mensagem; $2 = AUTO_CONFIRM (1 = bypass)
confirm_run() {
  local message="$1"
  local auto="${2:-0}"
  if [[ "$auto" -eq 1 ]]; then
    return 0
  fi
  echo -e "${C_YELLOW}⚠ ${message}${C_RESET}"
  read -r -p "Confirma e dispara o executor? [s/N] " confirm
  case "$confirm" in
    s|S|sim|SIM|y|Y|yes|YES) return 0 ;;
    *) echo -e "${C_DIM}↷ cancelado.${C_RESET}"; return 1 ;;
  esac
}

# --- log_info / log_warn / log_error ---
log_info()  { echo -e "${C_BLUE}ℹ${C_RESET}  $*"; }
log_warn()  { echo -e "${C_YELLOW}⚠${C_RESET}  $*"; }
log_error() { echo -e "${C_RED}✗${C_RESET}  $*" >&2; }
log_ok()    { echo -e "${C_GREEN}✔${C_RESET}  $*"; }

# --- auto_publish_output: commita e envia a pasta de saída quando ela está em um repo Git ---
# Args: $1 = OUTPUT_DIR; $2 = disciplina; $3 = ano/série; $4 = unidade
# Desative com AUTO_PUBLISH=0.
auto_publish_output() {
  local output_dir="$1"
  local disciplina="$2"
  local ano="$3"
  local unidade="$4"
  local enabled="${AUTO_PUBLISH:-1}"

  if [[ "$enabled" == "0" || "$enabled" == "false" || "$enabled" == "FALSE" ]]; then
    log_info "Publicação automática desativada por AUTO_PUBLISH=0."
    return 0
  fi

  command -v git >/dev/null 2>&1 || { log_warn "git não encontrado; publicação automática ignorada."; return 0; }

  local repo_root
  if ! repo_root="$(git -C "$output_dir" rev-parse --show-toplevel 2>/dev/null)"; then
    log_warn "Saída não está dentro de um repositório Git; publicação automática ignorada: $output_dir"
    return 0
  fi

  git -C "$output_dir" add .

  if git -C "$output_dir" diff --cached --quiet --exit-code -- .; then
    log_info "Nenhuma alteração nova para publicar em $repo_root."
    return 0
  fi

  local commit_msg="Adiciona ${disciplina} ${ano} ${unidade}"
  log_info "Commitando conteúdos gerados em $(basename "$repo_root")..."
  git -C "$output_dir" commit -m "$commit_msg" -- .

  log_info "Enviando commit para o remoto de $(basename "$repo_root")..."
  git -C "$repo_root" push
  log_ok "Conteúdos publicados no repositório remoto."
}
