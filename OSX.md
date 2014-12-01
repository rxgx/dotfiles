# Fresh OSX Checklist

Here's what to do after completing a fresh install of OX S.

## General Config

1. App Store
 * Run Software Update
 * Install software
2. Keyboard
 * Use F1..12 keys
 * In "Shortcuts", allow press Tab to move between "All Controls"
3. Trackpad
 * Enable tap to click
 * Enable 3-finger-drag
 * Enable swipe with two fingers
 * Increase tracking
4. Mouse
 * Set as right button
 * Enable wipe with two fingers
 * Increase tracking
5. Dock
 * Clean up
 * Set to auto-hide
6. Finder
 * Clean up menu bar
 * Change view options to show Path & Status Bars
7. System Preferences: Disable "Show Dashboard as a Space" under Mission Control
8. Desktop: Snap desktop items to grid
9. Date & Time
 * Use a 24hr clock
 * Show date


### Download & Install Apps

1. [Google Chrome & Canary](https://www.google.com/chrome/) and make sure extensions are updated
1. [Firefox](https://www.mozilla.org/en-US/firefox/)
1. [Atom Editor](https://atom.io/)
1. [TextMate](http://macromates.com/download)
1. [Dropbox](https://www.dropbox.com/downloading?os=mac) and change menu bar color in preferences
1. [RubyMine](http://www.jetbrains.com/ruby/) and use RubyMine settings folder from Dropbox
1. [Adobe Creative Cloud](https://creative.adobe.com/)
1. [f.lux](http://justgetflux.com/)
1. [Pow](http://pow.cx/) for local sites and subdomains
1. [Anvil](http://anvilformac.com/) menu bar for Pow sites
1. [Shuttle](http://fitztrev.github.io/shuttle/) menu bar for SSH
1. [Transmit](http://panic.com/transmit/) for SCP/FTP
1. [Cyberduck](http://cyberduck.io) for Rackspace Cloud Files
1. [xScope](http://iconfactory.com/software/xscope)
1. [VirtualBox](https://www.virtualbox.org/wiki/Downloads)



### Development

1. Open Xcode and agree to license
2. Terminal
 * Set window to Pro
 * Shells open with `/bin/bash`
 * Set font to 12pt Panic Sans
 * Set window size to 128 x 48
 * Set ASCII color Blue (4) to lighter shade
3. [Generate SSH Key](https://help.github.com/articles/generating-ssh-keys)
4. Download and install config files
  `git clone git@github.com:rxgx/dotfiles.git`
5. Install Homebrew
  `ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"`
6. Open Atom from command line
  `ln -s /Applications/Atom.app/Contents/MacOS/Atom /usr/local/bin/atom`
7. Install Xcode Command Line Tools
  `xcode-select --install`
