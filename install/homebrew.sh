#!/bin/bash
cd ~/repos/dotfiles

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

if [ ! "$(brew ls --versions elm)" ]; then
  echo "Installing elm"
  brew install elm
fi

if [ ! "$(brew ls --versions emacs-mac)" ]; then
  echo "Installing emacs-mac"
  brew tap railwaycat/emacsmacport
  brew install emacs-mac --with-spacemacs-icon
fi

if [ ! "$(brew ls --versions macvim)" ]; then
  echo "Installing macvim"
  brew install macvim --with-override-system-vim
fi

if [ ! "$(brew ls --versions neovim)" ]; then
  echo "Installing neovim"
  brew install neovim/neovim/neovim
fi

if [ ! "$(brew ls --versions python)" ]; then
  echo "Installing python"
  brew install python
  sudo easy_install-2.7 pip
  sudo easy_install-2.7 greenlet
  sudo pip2 install neovim
fi

if [ ! "$(brew ls --versions python3)" ]; then
  echo "Installing python3"
  brew install python3
  sudo easy_install-3.5 pip
  sudo pip3 install neovim
fi

#if [ ! "$(brew ls --versions rbenv)" ]; then
#  echo "Installing rbenv"
#  brew install rbenv ruby-build
#fi

if [ ! "$(brew ls --versions reattach-to-user-namespace)" ]; then
  echo "Installing reattach-to-user-namespace"
  brew install reattach-to-user-namespace
fi

if [ ! "$(brew ls --versions the_silver_searcher)" ]; then
  echo "Installing the_silver_searcher"
  brew install the_silver_searcher
fi

if [ ! "$(brew ls --versions tmux)" ]; then
  echo "Installing tmux"
  brew install tmux
fi

if [ ! "$(brew ls --versions vim)" ]; then
  echo "Installing vim"
  brew install vim
fi

if [ ! "$(brew ls --versions watchman)" ]; then
  echo "Installing watchman"
  brew install watchman
fi

echo "Linking homebrew pakcages"
brew linkapps
