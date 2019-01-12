#!/usr/bin/env sh

echo "Installing Emacs..."
echo "Yes, org-mode is that good..."
sudo pacman -Syu emacs -lfs --needed --noconfirm

ln -sfT "$HOME/.dotfiles/emacs/init.el"  "$HOME/.emacs"

emacs --daemon

