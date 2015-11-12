#!/bin/bash

printf "\nHomebrew-Cask\n"
echo "------------------------------"

echo "Installing homebrew casks"

if [ "$(brew cask info 1password | grep 'Not installed')" ]; then
  echo "Installing 1password"
  brew cask install 1password
fi

if [ "$(brew cask info alfred | grep 'Not installed')" ]; then
  echo "Installing alfred"
  brew cask install alfred
fi

if [ "$(brew cask info atom | grep 'Not installed')" ]; then
  echo "Installing atom"
  brew cask install atom
fi

if [ "$(brew cask info dropbox | grep 'Not installed')" ]; then
  echo "Installing dropbox"
  brew cask install dropbox
fi

if [ "$(brew cask info firefox | grep 'Not installed')" ]; then
  echo "Installing firefox"
  brew cask install firefox
fi

if [ "$(brew cask info fitbit-connect | grep 'Not installed')" ]; then
  echo "Installing fitbit-connect"
  brew cask install fitbit-connect
fi

if [ "$(brew cask info flux | grep 'Not installed')" ]; then
  echo "Installing flux"
  brew cask install flux
fi

if [ "$(brew cask info garmin-express | grep 'Not installed')" ]; then
  echo "Installing garmin-express"
  brew cask install garmin-express
fi

if [ "$(brew cask info google-chrome | grep 'Not installed')" ]; then
  echo "Installing google-chrome"
  brew cask install google-chrome
fi

if [ "$(brew cask info iterm2 | grep 'Not installed')" ]; then
  echo "Installing iterm2"
  brew cask install iterm2
fi

if [ "$(brew cask info picturelife | grep 'Not installed')" ]; then
  echo "Installing picturelife"
  brew cask install picturelife
fi

if [ "$(brew cask info screenhero | grep 'Not installed')" ]; then
  echo "Installing screenhero"
  brew cask install screenhero
fi

if [ "$(brew cask info seil | grep 'Not installed')" ]; then
  echo "Installing seil"
  brew cask install seil
fi

if [ "$(brew cask info skype | grep 'Not installed')" ]; then
  echo "Installing skype"
  brew cask install skype
fi

if [ "$(brew cask info slack | grep 'Not installed')" ]; then
  echo "Installing slack"
  brew cask install slack
fi

if [ "$(brew cask info sonos | grep 'Not installed')" ]; then
  echo "Installing sonos"
  brew cask install sonos
fi

if [ "$(brew cask info tower | grep 'Not installed')" ]; then
  echo "Installing tower"
  brew cask install tower
fi

if [ "$(brew cask info zoomus | grep 'Not installed')" ]; then
  echo "Installing zoomus"
  brew cask install zoomus
fi

#no longer required
#echo "Linking homebrew casks in alfred"
#brew cask alfred link
