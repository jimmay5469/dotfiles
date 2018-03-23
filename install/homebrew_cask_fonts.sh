#!/bin/bash
cd ~/repos/dotfiles

printf "\nHomebrew-Cask Fonts\n"
echo "------------------------------"

echo "Installing homebrew cask fonts"

if [ ! "$(brew cask ls | grep font-fira-code)" ]; then
  echo "Installing font-hack"
  brew cask install caskroom/fonts/font-fira-code
fi
