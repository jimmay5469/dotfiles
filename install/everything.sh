#!/bin/bash

printf "\n\nCommon installation\n"
echo "=============================="

source install/dotfiles.sh 
source install/symlinks.sh

if [ "$(uname)" == "Darwin" ]; then

  printf "\n\nOSX installation\n"
  echo "=============================="

  source install/homebrew.sh 
fi
