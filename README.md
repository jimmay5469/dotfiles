My Environment Settings
=======================

1. Install everything on [Nitrous.io](http://help.nitrous.io/box-interpreters-and-tools/) and more (sublime, macvim, git, [nvm](https://github.com/creationix/nvm), rvm/[rbenv](https://github.com/sstephenson/rbenv), heroku, etc.)
2. Run: `git clone https://github.com/jimmay5469/dotfiles.git`
3. Run: `cd dotfiles`
4. Run: `node setup.js`
5. Remap caps lock to esc using [PCKeyboardHack](https://pqrs.org/macosx/keyremap4macbook/pckeyboardhack.html.en) (don't forget to edit modifier keys in _System Preferences_ -> _Keyboard_)
6. Allow key auto repeat: `$ defaults write -g ApplePressAndHoldEnabled -bool false`
 
Git Setup
---------
```
$ git config --global user.name jimmay5469
$ git config --global user.email jimmay5469@gmail.com
```

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
