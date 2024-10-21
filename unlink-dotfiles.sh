#!/bin/bash


set -eu -o pipefail


stow \
  --verbose \
  --target="${HOME}" \
  --delete \
  git/ \
  python/ \
  zsh/
