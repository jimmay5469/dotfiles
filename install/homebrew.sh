#!/bin/bash

printf "\nHomebrew\n"
echo "------------------------------"

if test ! $(which brew); then
  echo "Installing homebrew"
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi


echo "Installing homebrew packages"

if [ ! "$(brew ls --versions brew-cask)" ]; then
  echo "Installing brew-cask"
  brew install caskroom/cask/brew-cask
fi

if [ ! "$(brew ls --versions editorconfig)" ]; then
  echo "Installing editorconfig"
  brew install editorconfig
fi

if [ ! "$(brew ls --versions emacs-mac)" ]; then
  echo "Installing emacs-mac"
  brew tap railwaycat/emacsmacport
  brew install emacs-mac --with-spacemacs-icon
fi

if [ ! "$(brew ls --versions git)" ]; then
  echo "Installing git"
  brew install git
fi

if [ ! "$(brew ls --versions macvim)" ]; then
  echo "Installing macvim"
  brew install macvim
fi

if [ ! "$(brew ls --versions the_silver_searcher)" ]; then
  echo "Installing the_silver_searcher"
  brew install the_silver_searcher
fi

if [ ! "$(brew ls --versions tmux)" ]; then
  echo "Installing tmux"
  brew install tmux
fi

if [ ! "$(brew ls --versions watchman)" ]; then
  echo "Installing watchman"
  brew install watchman
fi

echo "Linking homebrew pakcages"
brew linkapps
