#!/usr/bin/env zsh
# Disable mac gatkeeper
export HOMEBREW_CASK_OPTS="--no-quarantine --no-binaries"
# N node version manager
export N_PREFIX="$HOME/.n"
export PREFIX="$N_PREFIX"
# check if a given command exists or not
function exists() {
  command -v $1 >/dev/null 2>&1
}
