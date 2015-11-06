#!/bin/bash

printf "\nCreating dotfile symlinks\n"
echo "------------------------------"
dotfiles=$( find $PWD -name '*.dotfile' )
for file in $dotfiles ; do
  symlink="$HOME/.$( basename $file ".dotfile" )"
  echo "~${symlink#$HOME}"
  if [ $symlink ]; then
    rm -f $symlink
  fi
  ln -s $file $symlink
done
