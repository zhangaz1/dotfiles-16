#!/usr/bin/env bash

# shellcheck source=helpers.sh
. ../helpers.sh

echo "Add NodeJS keys..."
bash ~/.asdf/plugins/nodejs/bin/import-release-team-keyring

echo "Symling .default-npm-packages..."
ln -sfT ~/.dotfiles/nodejs/default-npm-packages ~/.default-npm-packages

echo_done "nodejs configuration!"

