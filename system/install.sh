#!/bin/bash

# shellcheck source=distro.sh
. ../distro.sh
# shellcheck source=helpers.sh
. ../helpers.sh

echo_info "Cloning fzf..."
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf

echo_info "Installing fzf..."
~/.fzf/install

echo_done "System configuration!"
