My Environment Settings
=======================

1. Install things:
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
2. Run: `git clone https://github.com/jimmay5469/dotfiles.git`
3. Run: `cd dotfiles`
4. Run: `./install.sh` (note: this sets up git to my username)
5. Remap caps lock to esc using [PCKeyboardHack](https://pqrs.org/macosx/keyremap4macbook/pckeyboardhack.html.en) (don't forget to edit modifier keys in _System Preferences_ -> _Keyboard_)
6. Allow key auto repeat: `$ defaults write -g ApplePressAndHoldEnabled -bool false`

Spacemacs Setup
---------------
1. Install [Spacemacs](https://github.com/syl20bnr/spacemacs)
2. Install JSHint `npm install jshint -g`
2. Install editorconfig `brew install editorconfig`

Vim Setup
---------
1. Install [Vundle](https://github.com/gmarik/Vundle.vim)
2. Install [Meslo LG S Regular for Powerline](https://github.com/Lokaltog/powerline-fonts/blob/master/Meslo/Meslo%20LG%20S%20Regular%20for%20Powerline.otf) font
3. Start Vim and run: `:PluginInstall`
