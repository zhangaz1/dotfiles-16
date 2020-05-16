#!/usr/bin/env bash

# shellcheck source=helpers.sh
. ../helpers.sh

_install neovim

echo_info "[curl]" "Installing vim-plug..."
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo_info "[symlink]" "~/init.vim"
mkdir -p ~/.config/nvim
ln -sfT ~/.dotfiles/nvim/init.vim ~/.config/nvim/init.vim

echo_info "[symlink]" "~/nvim/ftplugin"
ln -s ~/.dotfiles/nvim/ftplugin ~/.config/nvim/ftplugin

echo_done "neovim configuration!"
