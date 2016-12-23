#!/bin/bash
cd ~/repos/dotfiles

printf "\nHomebrew-Cask\n"
echo "------------------------------"

echo "Installing homebrew casks"

if [ ! "$(brew cask ls | grep 1password)" ]; then
  echo "Installing 1password"
  brew cask install 1password
fi

if [ ! "$(brew cask ls | grep alfred)" ]; then
  echo "Installing alfred"
  brew cask install alfred
fi

if [ ! "$(brew cask ls | grep bartender)" ]; then
  echo "Installing bartender"
  brew cask install bartender
fi

#if [ ! "$(brew cask ls | grep atom)" ]; then
#  echo "Installing atom"
#  brew cask install atom
#fi

if [ ! "$(brew cask ls | grep dash)" ]; then
  echo "Installing dash"
  brew cask install dash
fi

if [ ! "$(brew cask ls | grep dropbox)" ]; then
  echo "Installing dropbox"
  brew cask install dropbox
fi

if [ ! "$(brew cask ls | grep firefox)" ]; then
  echo "Installing firefox"
  brew cask install firefox
fi

#if [ ! "$(brew cask ls | grep fitbit-connect)" ]; then
#  echo "Installing fitbit-connect"
#  brew cask install fitbit-connect
#fi

if [ ! "$(brew cask ls | grep flux)" ]; then
  echo "Installing flux"
  brew cask install flux
fi

if [ ! "$(brew cask ls | grep garmin-express)" ]; then
  echo "Installing garmin-express"
  brew cask install garmin-express
fi

if [ ! "$(brew cask ls | grep google-chrome)" ]; then
  echo "Installing google-chrome"
  brew cask install google-chrome
fi

if [ ! "$(brew cask ls | grep google-photos-backup)" ]; then
  echo "Installing google-photos-backup"
  brew cask install google-photos-backup
fi

if [ ! "$(brew cask ls | grep hammerspoon)" ]; then
  echo "Installing hammerspoon"
  brew cask install hammerspoon
fi

if [ ! "$(brew cask ls | grep iterm2)" ]; then
  echo "Installing iterm2"
  brew cask install iterm2
fi

if [ ! "$(brew cask ls | grep karabiner-elements)" ]; then
  echo "Installing karabiner-elements"
  brew cask install karabiner-elements
fi

if [ ! "$(brew cask ls | grep screenhero)" ]; then
  echo "Installing screenhero"
  brew cask install screenhero
fi

if [ ! "$(brew cask ls | grep skype)" ]; then
  echo "Installing skype"
  brew cask install skype
fi

if [ ! "$(brew cask ls | grep slack)" ]; then
  echo "Installing slack"
  brew cask install slack
fi

if [ ! "$(brew cask ls | grep sonos)" ]; then
  echo "Installing sonos"
  brew cask install sonos
fi

if [ ! "$(brew cask ls | grep spotify)" ]; then
  echo "Installing spotify"
  brew cask install spotify
fi

if [ ! "$(brew cask ls | grep tower)" ]; then
  echo "Installing tower"
  brew cask install tower
fi

if [ ! "$(brew cask ls | grep zoomus)" ]; then
  echo "Installing zoomus"
  brew cask install zoomus
fi

#no longer required
#echo "Linking homebrew casks in alfred"
#brew cask alfred link
