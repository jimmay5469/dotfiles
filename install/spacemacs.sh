#!/bin/bash

if [ ! -d "$HOME/.emacs.d" ]; then
  printf "\nSpacemacs\n"
  echo "------------------------------"
  echo "Installing spacemacs"
  git clone --recursive https://github.com/syl20bnr/spacemacs ~/.emacs.d
fi
