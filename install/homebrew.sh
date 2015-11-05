#!/bin/bash

echo "\nHomebrew"
echo "------------------------------"

if test ! $(which brew); then
  echo "Installing homebrew"
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo "Installing homebrew packages..."

brew install git
brew install tmux
brew install macvim
brew install the_silver_searcher
