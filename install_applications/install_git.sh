#!/usr/bin/env bash

if command -v git >/dev/null 2>&1; then
	echo "git already installed."
else
	sudo apt install git
fi

git config --global user.email "m@mathieupage.com"
git config --global user.name  "Mathieu Pagé"
