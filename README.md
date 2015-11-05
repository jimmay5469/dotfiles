My Environment Settings
=======================

1. `git clone https://github.com/jimmay5469/dotfiles.git`
2. `cd dotfiles`
3. `./install.sh`
4. OSX setup
  - Enable tap click
  - Endable 3 finger drag
  - Remap caps lock to esc using [Seil](https://pqrs.org/osx/karabiner/seil.html.en)
  - Edit modifier keys in _System Preferences_ -> _Keyboard_
    - `Caps Lock` -> `No Action` (for all keyboards)
  - Allow key auto repeat: `$ defaults write -g ApplePressAndHoldEnabled -bool false`
5. Install things:
  - [iTerm2](http://iterm2.com/)
    - [Apprentice theme](https://github.com/romainl/iterm2-colorschemes)
    - [Solarized theme](http://ethanschoonover.com/solarized)
  - [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)
  - [nvm](https://github.com/creationix/nvm)
  - [rbenv](https://github.com/sstephenson/rbenv)
  - Alfred
  - Dropbox
  - 1Password
  - Dash
  - Slack
  - Tower
  - Flux
  - Monosnap
  - GifGrabber

Spacemacs Setup
---------------
1. Install [Spacemacs](https://github.com/syl20bnr/spacemacs)
2. Install JSHint `npm install jshint -g`

Vim Setup
---------
1. Install [Vundle](https://github.com/gmarik/Vundle.vim)
2. Install [Meslo LG S Regular for Powerline](https://github.com/Lokaltog/powerline-fonts/blob/master/Meslo/Meslo%20LG%20S%20Regular%20for%20Powerline.otf) font
3. Start Vim and run: `:PluginInstall`
