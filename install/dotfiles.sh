#!/bin/bash
cd ~/repos/dotfiles

printf "\nCreating dotfile symlinks\n"
echo "------------------------------"
dotfiles=$( find $PWD -name '*.dotfile' )
for file in $dotfiles ; do
  symlink="$HOME/.$( basename $file ".dotfile" )"
  echo "~${symlink#$HOME}"
  if [ $symlink ]; then
    rm -rf $symlink
  fi
  ln -s $file $symlink
done

echo "~/.config/nvim/init.vim"
mkdir -p ~/.config/nvim
rm -f ~/.config/nvim/init.vim
ln -s ~/.vimrc ~/.config/nvim/init.vim
