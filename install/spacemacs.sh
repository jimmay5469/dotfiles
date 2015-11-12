#!/bin/bash

if [ ! -d "$HOME/.emacs.d/.git" ]; then
  printf "\nSpacemacs\n"
  echo "------------------------------"
  echo "Installing spacemacs"
  rm -rf ~/.emacs.d
  git clone --recursive https://github.com/syl20bnr/spacemacs ~/.emacs.d
fi
