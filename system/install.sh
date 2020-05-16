#!/usr/bin/env bash

# shellcheck source=helpers.sh
. ../helpers.sh

echo_info "[git]" "Cloning fzf..."
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf

echo_info "[fzf]" "Running installation script..."
~/.fzf/install

echo_done "system configuration!"
