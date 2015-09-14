My Environment Settings
=======================

1. Install things:
  - [homebrew](http://brew.sh/)
    - macvim (via homebrew)
    - git (via homebrew)
  - [iTerm2](http://iterm2.com/)
    - [Apprentice theme](https://github.com/romainl/iterm2-colorschemes)
    - [Solarized theme](http://ethanschoonover.com/solarized)
  - [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)
  - [nvm](https://github.com/creationix/nvm)
  - [rbenv](https://github.com/sstephenson/rbenv)
2. Run: `git clone https://github.com/jimmay5469/dotfiles.git`
3. Run: `cd dotfiles`
4. Run: `node setup.js` (note: this sets up git to my username)
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
2. Install [the_silver_searcher](https://github.com/ggreer/the_silver_searcher)
3. Install [Meslo LG S Regular for Powerline](https://github.com/Lokaltog/powerline-fonts/blob/master/Meslo/Meslo%20LG%20S%20Regular%20for%20Powerline.otf) font
4. Start Vim and run: `:PluginInstall`

Sublime Text 2 Setup
--------------------
1. Install [Package Control](https://sublime.wbond.net/installation)
2. Install [Origami](https://github.com/SublimeText/Origami)
3. _Sublime Text 2_ -> _Preferences_ -> _Settings - Default_

   `"ignored_packages": []//["Vintage"]`

4. Optional: _Sublime Text 2_ -> _Preferences_ -> _Settings - User_

   ```
   {
     "vintage_start_in_command_mode": true
   }
   ```

Sublime Text 3 Setup
--------------------
1. Install [Package Control](https://sublime.wbond.net/installation)
2. Install [Origami](https://github.com/SublimeText/Origami)
3. Install [Vintageous](https://sublime.wbond.net/packages/Vintageous)
4. Install [VintageousOrigami](https://sublime.wbond.net/packages/VintageousOrigami)
5. Enable Vintageous to use ctrl keys in your preferences: `"vintageous_use_ctrl_keys": true`
