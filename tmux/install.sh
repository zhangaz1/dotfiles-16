#!/usr/bin/env bash

# shellcheck source=helpers.sh
. ../helpers.sh

_install tmux

echo_info "[git]" "Clonning Tmux plugins..."
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

echo_info "[symlink]" "~/.tmux.conf"
ln -sfT ~/.dotfiles/tmux/tmux.conf ~/.tmux.conf

echo_done "tmux configuration!"
