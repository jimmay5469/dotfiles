#!/bin/bash

if [ ! -d "$HOME/repos" ]; then
  echo 'Creating ~/repos directory'
  mkdir ~/repos
fi
cd ~/repos

if [ ! -d "$HOME/repos/dotfiles" ]; then
  echo 'Cloning jimmay5469/dotfiles'
  git clone git@github.com:jimmay5469/dotfiles.git --origin jimmay5469
fi
cd dotfiles

source install/everything.sh 
