#!/bin/bash

echo "\nCreating dotfile symlinks"
echo "=============================="
dotfiles=$( find $PWD -name '*.dotfile' )
for file in $dotfiles ; do
  symlink="$HOME/.$( basename $file ".dotfile" )"
  echo "~${symlink#$HOME}"
  if [ $symlink ]; then
    echo "  - Removing existing file"
    rm -f $symlink
  fi
  echo "  - Creating symlink"
  ln -s $file $symlink
done
