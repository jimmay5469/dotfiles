#!/bin/bash
cd ~/repos/dotfiles

printf "\nCreating symlinks\n"
echo "------------------------------"
symlinks=$( find $PWD -name '*.symlink' )
for file in $symlinks ; do
  fileDirectoryName=$( dirname $file )
  symlinkDirectoryName=${fileDirectoryName/#$PWD/$HOME}
  symlinkFileName=$( basename $file ".symlink" )
  symlink="$symlinkDirectoryName/$symlinkFileName"

  echo "~${symlink#$HOME}"
  if [ $symlink ]; then
    rm -rf $symlink
  fi
  mkdir -p $symlinkDirectoryName
  ln -s $file $symlink
done

echo "Special Cases"

echo "  ~/.config/nvim -> ~/.vim"
rm -rf ~/.config/nvim
mkdir -p ~/.config
ln -s ~/.vim ~/.config/nvim

echo "  ~/.config/nvim/init.vim ~/.vimrc"
rm -rf ~/.config/nvim/init.vim
mkdir -p ~/.config/nvim
ln -s ~/.vimrc ~/.config/nvim/init.vim
