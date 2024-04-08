Manual Installation Steps
=========================

App store installs:
-------------------
- Monosnap (old)
- Bear (old)
- Space Gremlin (old)
- Amphetamine (old)
- RetroClip (old)
- GIF Brewery (old)
- IA Writer

OSX Setup
---------
- Accessability Settings
  - Enable 3 finger drag
- Trackpad
  - Disable swipe between pages
  - Enable 3 finger lookup
- Keyboard
  - `Caps Lock` -> `Control` (for all keyboards)
  - `Shortcuts` -> `Spotlight` -> Uncheck `Show Spotlight search` shortcut
- Displays
  - `Night Shift` > `Custom` : `8:30 PM - 5:00 AM` (match iPhone)
- Bluetooth
  - Show bluetooth in menu bar
- Dock
  - Position on screen: right
  - Automatically hide and show the Dock
  - Make it small
  - Remove everythign from it except Finder and Settings
- Mission Control 
  - Disable spaces rearangement in settings mission control 
- Internet accounts
  - Log into all
  - Sync contacts and calendars
  - iCloud sync everything but: photos, mail, contacts, notes, back to my mac
- Sharing
  - Check `File Sharing`
    - Share User's Public Folder
      - `Read & Write` for me
      - `No Access` for `Everyone`
      - Edit `[name].local` so 0.0.0.0 can be accessed from phones on the network at `http://[name].local`
- Add `~/` and `Mackintosh HD` directories to Finder favorites

iCloud Setup
------------
- In `Preferences` > `iCloud` > `iCloud Drive Options` uncheck `Optimize Mac Storage`

1Password Setup
---------------
- Log in using 1Password account

iTerm Setup
-----------
- In iTerm2 `Preferences` > `General` set `Load preferences from a custom folder or URL` to `iCloud/iTerm2`
- Check `Save changes to folder when iTerm2 quits`
- Run `base16_tomorrow`

Alfred Setup
------------
- In 1Password, find `Alfred` in the `Primary` vault and use the license key to activate the Alfred Powerpack.
- In the `Advanced` tab click `Set sync folder...` and choose `iCloud/Alfred`.

Dash Setup
----------
- In 1Password, find `Dash` in the `Primary` vault and open the `license.dash-license` attachment.
- In the Dash `Preferences` click `Set Up Syncing` > `Set Sync Folder` and choose `iCloud/Dash`.

Chrome Setup
------------
- Install 1password extension
- Login

GitHub Setup
------------
- GitHub SSH key ([Generating SSH keys](https://help.github.com/articles/generating-ssh-keys/) and [Working with SSH key passphrases](https://help.github.com/articles/working-with-ssh-key-passphrases/))
- Run `ssh-add -K ~/.ssh/id_ed25519`
