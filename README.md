My Environment Settings
=======================

1. `curl https://raw.githubusercontent.com/jimmay5469/dotfiles/master/install.sh | bash`
2. OSX setup
  - Trackpad
    - Enable tap click
    - Endable 3 finger drag
    - Disable swipe between pages
    - Enable 3 finger lookup
  - Keyboard
    - `Caps Lock` -> `No Action` (for all keyboards)
    - Key repeat: fastest
    - Delay until repeat: next to slowest
  - Remap caps lock to esc using [Seil](https://pqrs.org/osx/karabiner/seil.html.en)
  - Allow key auto repeat: `$ defaults write -g ApplePressAndHoldEnabled -bool false`
3. Install things:
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
