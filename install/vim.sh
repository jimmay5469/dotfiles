#!/bin/bash
cd ~/repos/dotfiles

printf "\nVim\n"
echo "------------------------------"

if [ ! -e ~/.vim/autoload/plug.vim ]; then
  curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

echo "Installing vim plugins"
nvim +PlugInstall +qall #&> /dev/null
