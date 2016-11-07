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

  echo "~${symlink#$HOME} -> ~${file#$HOME}"
  if [ $symlink ]; then
    rm -rf $symlink
  fi
  mkdir -p $symlinkDirectoryName
  ln -s $file $symlink
done
