#!/bin/bash

echo "\nCommon installation"
echo "=============================="

source install/dotfiles.sh 

if [ "$(uname)" == "Darwin" ]; then

  echo "\nOSX installation"
  echo "=============================="

  source install/homebrew.sh 
fi
