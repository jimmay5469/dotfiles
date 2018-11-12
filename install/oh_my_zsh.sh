#!/bin/bash
cd ~/repos/dotfiles

if [ ! -d "$HOME/.oh-my-zsh" ]; then #oh-my-zsh is not installed
  if test $(which zsh); then #zsh prerequisite is installed
    printf "\nOh My Zsh\n"
    echo "------------------------------"
    echo "Installing oh-my-zsh"
    git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
    chsh -s /bin/zsh
  fi
fi

if [ ! -d "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/alias-tips" ]; then
  echo 'Cloning djui/alias-tips'
  git clone https://github.com/djui/alias-tips.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/alias-tips
fi

if [ ! -d "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autosuggestions" ]; then
  echo 'Cloning zsh-users/zsh-autosuggestions'
  git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
fi

if [ ! -d "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting" ]; then
  echo 'Cloning zsh-users/zsh-syntax-highlighting'
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
fi

if [ ! -d "$HOME/.config/base16-shell" ]; then
  echo 'Cloning chriskempson/base16-shell'
  git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell
fi
