#!/bin/bash

# shellcheck source=distro.sh
. ../distro.sh
# shellcheck source=helpers.sh
. ../helpers.sh

echo_info "Symlink .bashrc..."
ln -sfT "$HOME/.dotfiles/bash/bashrc" "$HOME/.bashrc"

echo_done "Bash configuration!"
