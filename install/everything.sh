#!/bin/bash
cd ~/repos/dotfiles

printf "\n\nInstalling Everything\n"
echo "=============================="

if [ "$(uname)" == "Darwin" ]; then

  source install/homebrew.sh
  source install/homebrew_cask.sh
  source install/homebrew_cask_fonts.sh

  source install/oh_my_zsh.sh

  source install/symlinks.sh

  source install/asdf.sh

  source install/vim.sh

  env zsh -l

else

  echo 'You are not running OSX.  Please visit ~/repos/dotfiles/install/ and manually run the necessary install scripts.'

fi
