#!/usr/bin/env bash

script_dir=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)

# make other install scripts executables
find . -type f -name "*.sh" -exec chmod u+x {} +
chmod u+x ./*.sh

# Sourcing mybashrc at the end of .bashrc if it is not already in there
lineToAdd='. ~/dotfiles/bashrc/mybashrc' 
grep -qxF "$lineToAdd" ~/.bashrc || echo "$lineToAdd" >> ~/.bashrc

# Creating symlinks to dotfile
find "$script_dir"/.config "$script_dir"/.local -type d | sed "s|$script_dir/||" | xargs -I {} mkdir -v -p ~/{}
find "$script_dir"/.config "$script_dir"/.local -type f | sed "s|$script_dir/||" | xargs -I {} ln -sf $script_dir/"{}" ~/{}

# Refreshing the font cache
# fc-cache -fv

. install_applications/install_applications.sh
