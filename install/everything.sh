#!/bin/bash

printf "\n\nCommon installation\n"
echo "=============================="

if [ ! -d "$HOME/.oh-my-zsh" ]; then #oh-my-zsh is not installed
  if test $(which zsh); then #zsh prerequisite is installed
    echo "Installing oh-my-zsh"
    sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
  fi
fi

source install/nvm.sh
source install/dotfiles.sh 
source install/symlinks.sh

if [ "$(uname)" == "Darwin" ]; then

  printf "\n\nOSX installation\n"
  echo "=============================="

  source install/osx_settings.sh 
  source install/homebrew.sh 
  source install/homebrew_cask.sh 
fi
