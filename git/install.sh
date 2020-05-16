#!/usr/bin/env bash

# shellcheck source=helpers.sh
. ../helpers.sh

echo_info "[symlink]" "~/.gitconfig"
ln -sfT "$HOME/.dotfiles/git/gitconfig" "$HOME/.gitconfig"

echo_done "Git configuration!"
