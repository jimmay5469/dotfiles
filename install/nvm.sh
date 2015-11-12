#!/bin/bash

if [ ! -d "$HOME/.nvm" ]; then
  echo "Installing nvm"
  curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.29.0/install.sh | bash
  [[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh
  nvm install v0.12.1
  nvm alias default v0.12.1
else
  [[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh
fi
