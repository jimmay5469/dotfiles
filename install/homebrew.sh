#!/bin/bash
cd ~/repos/dotfiles

printf "\nHomebrew\n"
echo "------------------------------"

if test ! $(which brew); then
  echo "Installing homebrew"
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi


echo "Installing homebrew packages"

#no longer required
#if [ ! "$(brew ls --versions brew-cask)" ]; then
#  echo "Installing brew-cask"
#  brew install caskroom/cask/brew-cask
#fi

if [ ! "$(brew ls --versions universal-ctags)" ]; then
  echo "Installing universal-ctags"
  brew tap universal-ctags/universal-ctags
  brew install --HEAD universal-ctags
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

#this requires a full xcode install
#if [ ! "$(brew ls --versions macvim)" ]; then
#  echo "Installing macvim"
#  brew install macvim --with-override-system-vim
#fi

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

if [ ! "$(brew ls --versions vim)" ]; then
  echo "Installing vim"
  brew install vim
fi

if [ ! "$(brew ls --versions watchman)" ]; then
  echo "Installing watchman"
  brew install watchman
fi

#no longer required
#echo "Linking homebrew pakcages"
#brew linkapps
