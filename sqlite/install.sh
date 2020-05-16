#!/usr/bin/env bash

# shellcheck source=helpers.sh
. ../helpers.sh

echo_info "[symlink]" "~/.sqliterc"
ln -sfT ~/.dotfiles/sqlite/sqliterc ~/.sqliterc

echo_done "SQLite configuration!"

