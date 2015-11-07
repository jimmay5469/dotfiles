#!/bin/bash

if [ ! -d "$HOME/repos" ]; then
  echo 'Creating ~/repos directory'
  mkdir ~/repos
fi
cd ~/repos

if [ ! -d "$HOME/repos/dotfiles" ]; then
  echo 'Cloning jimmay5469/dotfiles'
  git clone https://github.com/jimmay5469/dotfiles.git --origin jimmay5469
  cd dotfiles
  git remote set-url --push jimmay5469 git@github.com:jimmay5469/dotfiles.git
else
  cd dotfiles
fi

source install/everything.sh 
