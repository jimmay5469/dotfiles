#!/bin/bash
cd ~/repos/dotfiles

if [ ! -d "$HOME/.oh-my-zsh" ]; then #oh-my-zsh is not installed
  if test $(which zsh); then #zsh prerequisite is installed
    printf "\nOh My Zsh\n"
    echo "------------------------------"
    echo "Installing oh-my-zsh"
    sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
  fi
fi

if [ ! -d "$HOME/.config/base16-shell" ]; then
  echo 'Cloning chriskempson/base16-shell'
  git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell
fi
