#!/usr/bin/env bash

if command -v google-chrome >/dev/null 2>&1; then
	echo "Google chrome already installed."
else
	downloadDir=$(xdg-user-dir DOWNLOAD)
	wget -P "$downloadDir" https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
	sudo dpkg -i "$downloadDir/google-chrome-stable_current_amd64.deb"
fi
