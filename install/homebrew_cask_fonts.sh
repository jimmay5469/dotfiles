#!/bin/bash
cd ~/repos/dotfiles

printf "\nHomebrew-Cask Fonts\n"
echo "------------------------------"

echo "Installing homebrew cask fonts"

if [ ! "$(brew cask ls | grep font-meslo-lg-for-powerline)" ]; then
  echo "Installing font-meslo-lg-for-powerline"
  brew cask install caskroom/fonts/font-meslo-lg-for-powerline
fi
