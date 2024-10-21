#!/bin/bash


set -eu -o pipefail


stow \
  --verbose \
  --target="${HOME}" \
  --restow \
  git/ \
  neovim/ \
  python/ \
  zsh/
