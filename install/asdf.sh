#!/bin/bash
cd ~/repos/dotfiles

printf "\nasdf\n"
echo "------------------------------"

if [ ! "$(asdf plugin list | grep nodejs)" ]; then
  echo "Installing node plugin"
  asdf plugin add nodejs
fi

if [ ! "$(asdf plugin list | grep postgres)" ]; then
  echo "Installing postgres plugin"
  asdf plugin add postgres
fi

if [ ! "$(asdf plugin list | grep python)" ]; then
  echo "Installing python plugin"
  asdf plugin add python
fi

if [ ! "$(asdf plugin list | grep ruby)" ]; then
  echo "Installing ruby plugin"
  asdf plugin add ruby
fi

if [ ! "$(asdf plugin list | grep yarn)" ]; then
  echo "Installing yarn plugin"
  asdf plugin add yarn
fi

if [ ! "$(asdf plugin list | grep pnpm)" ]; then
  echo "Installing pnpm plugin"
  asdf plugin add pnpm
fi

cd ~/

echo "Installing asdf package global versions"
asdf install

cd ~/repos/dotfiles
