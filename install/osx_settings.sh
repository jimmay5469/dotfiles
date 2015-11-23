#!/bin/bash
cd ~/repos/dotfiles

printf "\nOSX Settings (requires restart to take effect)\n"
echo "------------------------------"


echo "Keyboard"

echo "  - Disable press-and-hold for keys in favor of key repeat"
defaults write -g ApplePressAndHoldEnabled -bool false

echo "  - Set repeat rate"
defaults write -g KeyRepeat -int 2

echo "  - Set delay until key repeat"
defaults write -g InitialKeyRepeat -int 25


echo "Trackpad"

echo "  - Enable tap to click"
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write -g com.apple.mouse.tapBehavior -int 1
defaults write -g com.apple.mouse.tapBehavior -int 1

echo "  - Enable three finger drag"
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerDrag -int 1
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerDrag -int 1


echo "Dock"

echo "  - Automatically hide and show the dock"
defaults write com.apple.dock autohide -bool true
