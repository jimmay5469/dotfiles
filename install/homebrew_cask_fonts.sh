#!/bin/bash
cd ~/repos/dotfiles

printf "\nHomebrew-Cask Fonts\n"
echo "------------------------------"

echo "Installing homebrew cask fonts"

if [ ! "$(brew ls | grep font-fira-code)" ]; then
  echo "Installing font-hack"
  brew install homebrew/cask-fonts/font-fira-code
fi
