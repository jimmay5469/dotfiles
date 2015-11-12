#!/bin/bash
cd ~/repos/dotfiles

printf "\nVim\n"
echo "------------------------------"

if [ ! -d "$HOME/.vim/bundle/Vundle.vim" ]; then
  echo "Installing vundle"
  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

echo "Installing vim plugins"
vim +PluginInstall +qall

echo "Installing neovim plugins"
nvim +PluginInstall +qall
