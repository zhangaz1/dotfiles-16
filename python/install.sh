#!/usr/bin/env bash

# shellcheck source=helpers.sh
. ../helpers.sh

echo_info "[symlink]" "~/.default-python-packages"
ln -sfT ~/.dotfiles/python/default-python-packages ~/.default-python-packages

echo_done "python configuration!"
