#!/usr/bin/env bash

dirs=$(find . -maxdepth 1 -mindepth 1 -type d -not -name '.git' -print)

for dir in $dirs; do
	echo "Installing ${dir}..."
	cd "$dir" || exit
	./install.sh
	cd ..
done
