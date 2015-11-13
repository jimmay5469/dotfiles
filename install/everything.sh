#!/bin/bash
cd ~/repos/dotfiles

printf "\n\nInstalling Everything\n"
echo "=============================="

if [ "$(uname)" == "Darwin" ]; then

  source install/osx_settings.sh 

  source install/homebrew.sh 
  source install/homebrew_cask.sh 
  source install/homebrew_cask_fonts.sh 

  source install/oh_my_zsh.sh
  source install/node.sh
  source install/spacemacs.sh 

  source install/dotfiles.sh 
  source install/symlinks.sh

  source install/vim.sh

else

  echo 'You are not running OSX.  Please visit ~/repos/dotfiles/install/ and manually run the necessary install scripts.'

fi

