#!/usr/bin/env bash

# shellcheck source=helpers.sh
. ../helpers.sh

echo_info "[symlink]" "~/.bashrc"
ln -sfT "$HOME/.dotfiles/bash/bashrc" "$HOME/.bashrc"

echo_done "bash configuration!"
