#!/bin/bash
cd ~/repos/dotfiles

printf "\nasdf\n"
echo "------------------------------"

if [ ! "$(asdf plugin list | grep nodejs)" ]; then
  echo "Installing node plugin"
  asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
fi

if [ ! "$(asdf plugin list | grep postgres)" ]; then
  echo "Installing postgres plugin"
  asdf plugin add postgres https://github.com/smashedtoatoms/asdf-postgres.git
fi

if [ ! "$(asdf plugin list | grep python)" ]; then
  echo "Installing python plugin"
  asdf plugin add python https://github.com/tuvistavie/asdf-python.git
fi

if [ ! "$(asdf plugin list | grep ruby)" ]; then
  echo "Installing ruby plugin"
  asdf plugin add ruby https://github.com/asdf-vm/asdf-ruby.git
fi

if [ ! "$(asdf plugin list | grep yarn)" ]; then
  echo "Installing ruby yarn"
  asdf plugin add yarn https://github.com/twuni/asdf-yarn.git
fi

cd ~/

echo "Installing asdf package global versions"
asdf install

cd ~/repos/dotfiles
