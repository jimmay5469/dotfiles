#!/bin/bash

echo "\nCreating symlinks"
echo "------------------------------"
symlinks=$( find $PWD -name '*.symlink' )
for file in $symlinks ; do
  symlink="$HOME/$( basename $file ".symlink" )"
  echo "~${symlink#$HOME}"
  if [ $symlink ]; then
    echo "  - Removing existing file"
    rm -f $symlink
  fi
  echo "  - Creating symlink"
  ln -s $file $symlink
done
