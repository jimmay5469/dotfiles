#!/bin/bash
cd ~/repos/dotfiles

printf "\nHomebrew-Cask\n"
echo "------------------------------"

echo "Installing homebrew casks"

if [ ! "$(brew cask ls | grep 1password)" ]; then
  echo "Installing 1password"
  brew cask install 1password
fi

if [ ! "$(brew cask ls | grep alfred)" ]; then
  echo "Installing alfred"
  brew cask install alfred
fi

if [ ! "$(brew cask ls | grep dash)" ]; then
  echo "Installing dash"
  brew cask install dash
fi

if [ ! "$(brew cask ls | grep dropbox)" ]; then
  echo "Installing dropbox"
  brew cask install dropbox
fi

if [ ! "$(brew cask ls | grep google-chrome)" ]; then
  echo "Installing google-chrome"
  brew cask install google-chrome
fi

if [ ! "$(brew cask ls | grep google-backup-and-sync)" ]; then
  echo "Installing google-backup-and-sync"
  brew cask install google-backup-and-sync
fi

if [ ! "$(brew cask ls | grep hammerspoon)" ]; then
  echo "Installing hammerspoon"
  brew cask install hammerspoon
fi

if [ ! "$(brew cask ls | grep iterm2)" ]; then
  echo "Installing iterm2"
  brew cask install iterm2
fi
