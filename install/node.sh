#!/bin/bash
cd ~/repos/dotfiles

printf "\nNode\n"
echo "------------------------------"

if [ ! -d "$HOME/.nvm" ]; then
  echo "Installing nvm"
  curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.29.0/install.sh | bash
fi
[[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh
if test ! $(which node); then
  echo "Installing node"
  nvm install v0.12.1
  nvm alias default v0.12.1
fi


echo "Installing npm packages"

if test ! $(which bower); then
  echo "Installing bower"
  npm install -g bower
fi

if test ! $(which ember); then
  echo "Installing ember-cli"
  npm install -g ember-cli
fi

if test ! $(which jshint); then
  echo "Installing jshint"
  npm install -g jshint
fi

if test ! $(which phantomjs); then
  echo "Installing phantomjs"
  npm install -g phantomjs2
fi
