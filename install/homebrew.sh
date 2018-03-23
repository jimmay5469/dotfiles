#!/bin/bash
cd ~/repos/dotfiles

printf "\nHomebrew\n"
echo "------------------------------"

if test ! $(which brew); then
  echo "Installing homebrew"
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi


echo "Installing homebrew packages"

if [ ! "$(brew ls --versions editorconfig)" ]; then
  echo "Installing editorconfig"
  brew install editorconfig
fi

if [ ! "$(brew ls --versions neovim)" ]; then
  echo "Installing neovim"
  brew install neovim/neovim/neovim
fi

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
