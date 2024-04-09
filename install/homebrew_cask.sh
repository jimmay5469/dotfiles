#!/bin/bash
cd ~/repos/dotfiles

printf "\nHomebrew-Cask\n"
echo "------------------------------"

echo "Installing homebrew casks"

if [ ! "$(brew ls | grep 1password)" ]; then
  echo "Installing 1password"
  brew install homebrew/cask/1password
fi

if [ ! "$(brew ls | grep alfred)" ]; then
  echo "Installing alfred"
  brew install homebrew/cask/alfred
fi

if [ ! "$(brew ls | grep dash)" ]; then
  echo "Installing dash"
  brew install homebrew/cask/dash
fi

if [ ! "$(brew ls | grep google-chrome)" ]; then
  echo "Installing google-chrome"
  brew install homebrew/cask/google-chrome
fi

if [ ! "$(brew ls | grep hammerspoon)" ]; then
  echo "Installing hammerspoon"
  brew install homebrew/cask/hammerspoon
fi

if [ ! "$(brew ls | grep iterm2)" ]; then
  echo "Installing iterm2"
  brew install homebrew/cask/iterm2
fi

if [ ! "$(brew ls | grep karabiner-elements)" ]; then
  echo "Installing karabiner-elements"
  brew install homebrew/cask/karabiner-elements
fi

if [ ! "$(brew ls | grep visual-studio-code)" ]; then
  echo "Installing visual-studio-code"
  brew install homebrew/cask/visual-studio-code
fi
