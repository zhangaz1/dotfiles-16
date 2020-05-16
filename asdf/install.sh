#!/usr/bin/env bash

# shellcheck source=helpers.sh
. ../helpers.sh

echo_info "[git]" "Cloning asdf..."
git clone https://github.com/asdf-vm/asdf.git ~/.asdf

SAVED_DIR=$PWD

cd ~/.asdf || exit

git checkout "$(git describe --abbrev=0 --tags)"

cd "$SAVED_DIR" || exit

echo_info "[symlink]" "~/.asdfrc"
ln -sfT ~/.dotfiles/asdf/asdfrc ~/.asdfrc

echo_info "[symlink]" "~/.tool-versions"
ln -sfT ~/.dotfiles/asdf/tool-versions ~/.tool-versions

echo_info "[asdf]" "Update asdf itself..."
asdf update

echo_info "[asdf]" "Add asdf plugins..."
asdf plugin-add nodejs
asdf plugin-add python

echo_info "[asdf]" "Update all plugins..."
asdf plugin-update --all

echo_done "asdf configuration!"
