#!/bin/bash

printf "\nCommon installation\n"
echo "=============================="

source install/dotfiles.sh 
source install/symlinks.sh

if [ "$(uname)" == "Darwin" ]; then

  printf "\nOSX installation\n"
  echo "=============================="

  source install/homebrew.sh 
fi
