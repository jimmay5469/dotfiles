#!/bin/bash

if [ ! -d "$HOME/repos/dotfiles" ]; then
  echo 'Cloning jimmay5469/dotfiles'
  git clone https://github.com/jimmay5469/dotfiles.git ~/repos/dotfiles --origin jimmay5469
  cd ~/repos/dotfiles
  git remote set-url --push jimmay5469 git@github.com:jimmay5469/dotfiles.git
fi

source ~/repos/dotfiles/install/everything.sh 
