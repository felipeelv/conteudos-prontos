#!/usr/bin/env bash
set -euo pipefail

REPO_DIR="/Users/feliperosa/material-blueprints"
REMOTE="origin"
BRANCH="main"
LOG_FILE="/tmp/material-blueprints-auto-pull.log"

timestamp() {
  date "+%Y-%m-%d %H:%M:%S %z"
}

log() {
  printf "[%s] %s\n" "$(timestamp)" "$*" >> "$LOG_FILE"
}

cd "$REPO_DIR"

if ! git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
  log "skip: not a git repository"
  exit 0
fi

if [ -n "$(git status --porcelain)" ]; then
  log "skip: working tree has local changes"
  exit 0
fi

git fetch "$REMOTE" "$BRANCH" --quiet

LOCAL_HEAD="$(git rev-parse HEAD)"
REMOTE_HEAD="$(git rev-parse "$REMOTE/$BRANCH")"

if [ "$LOCAL_HEAD" = "$REMOTE_HEAD" ]; then
  log "ok: already up to date"
  exit 0
fi

changed_files="$(git diff --name-only "$LOCAL_HEAD" "$REMOTE_HEAD")"

if ! printf "%s\n" "$changed_files" | grep -q "^blueprints/"; then
  log "skip: remote changed, but not blueprints/"
  exit 0
fi

git pull --ff-only "$REMOTE" "$BRANCH" --quiet
log "pulled: updated from $LOCAL_HEAD to $REMOTE_HEAD because blueprints/ changed"
