#!/bin/bash
cd ~/repos/dotfiles

printf "\nCreating symlinks\n"
echo "------------------------------"
symlinks=$( find $PWD -name '*.symlink' )
for file in $symlinks ; do
  symlink="$HOME/$( basename $file ".symlink" )"
  echo "~${symlink#$HOME}"
  if [ $symlink ]; then
    rm -rf $symlink
  fi
  ln -s $file $symlink
done
