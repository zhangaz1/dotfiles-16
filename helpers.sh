#!/bin/bash

function echo_error() {
  printf '\033[31mERROR:\033[0m %s\n' "$1"
}

function echo_warning() {
  printf '\033[33mWARNING:\033[0m %s\n' "$1"
}

function echo_done() {
  printf '\033[32mDONE:\033[0m %s\n' "$1"
}

function echo_info() {
  printf '\033[36m%s\033[0m ' "$1"
  shift 1
  echo -e $@
}

function _update() {
  if [[ $1 != "system" ]]; then
    echo_info '[_update]' "Updating $@..."
    sudo apt install -y $@
  else
    echo_info '[_update]' "Updating system packages..."
    sudo apt update
    sudo apt upgrade -y
  fi
}

function _install() {
    echo_info '[_install]' "Installing $@..."
    sudo apt install -y $@
}

function _symlink() {
  dirs=$(find . -maxdepth 1 -mindepth 1 -type d -not -name '.git' -print)

  for dir in $dirs; do
    echo "Setting up ${dir}..."
    cd "$dir" || exit
    ./install.sh
    cd ..
  done
}

