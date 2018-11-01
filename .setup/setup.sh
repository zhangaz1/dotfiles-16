#!/bin/bash

. .setup/distro.sh
. .setup/packages.sh
. .setup/helpers.sh

# SAVED_DIR=$PWD

# if [ -d "$HOME/.dotfiles" ]; then
#   cd "$HOME/.dotfiles" || exit 1
# else
#   printf "\\033[31mERROR:\\033[0m ~/.dotfiles doesn't exit.\\n" >&2
#   exit 1
# fi


# # Download Wallpapers
# sudo curl -o /usr/share/backgrounds/wallpaper.jpg  "https://images.unsplash.com/photo-1533759233673-2d30c9bc1e93"
# sudo curl -o /usr/share/backgrounds/login.jpg      "https://images.unsplash.com/https://images.unsplash.com/photo-1508138221679-760a23a2285b"

# cd "$SAVED_DIR" || exit

function update() {
  echo "Updating packages..."
  sudo "$PKGMN" "$PKGU" "${PKGOPT[@]}"
}

function install() {
  if [[ "$1" != "aur" ]]; then
    for pkg in "${PKG[@]}"
    do
      echo_info "Installing ${pkg}..."
      if ! [ -x "$(command -v rainbow)" ]; then
        sudo "$PKGMN" "$PKGI" "$pkg" "${PKGOPT[@]}"
      else
        rainbow --red=error --yellow=warning sudo "$PKGMN" "$PKGI" "$pkg" "${PKGOPT[@]}"
      fi
    done
  else
    for aur in "${AUR[@]}"
    do
      echo_info "Installing ${aur}..."
      sudo yaourt -Syu "$aur" --needed --noconfirm
    done
  fi
}

function symlink() {
  dirs=$(find . -maxdepth 1 -mindepth 1 -type d -not -name '.git' -print);

  for dir in $dirs
  do
    echo "Installing ${dir}...";
    sh "$dir/install.sh";
  done
}

echo_error "Não sei!"
echo_warning "Não sei!"
echo_done "Yes!"
echo_info "What?"
install core

