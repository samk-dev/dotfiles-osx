#!/usr/bin/env zsh
# check if a given command exists or not
function exists() {
  command -v $1 >/dev/null 2>&1
}
