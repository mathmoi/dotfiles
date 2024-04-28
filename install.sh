#!/usr/bin/env bash

# make other install scripts executables
find . -type f -name "*.sh" -exec chmod u+x {} +
chmod u+x ./*.sh

# Sourcing mybashrc at the end of .bashrc if it is not already in there
lineToAdd='. ~/dotfiles/bashrc/mybashrc' 
grep -qxF "$lineToAdd" ~/.bashrc || echo "$lineToAdd" >> ~/.bashrc

. install_applications/install_applications.sh
