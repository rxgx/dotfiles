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

1. [Google Chrome](https://www.google.com/chrome/) and make sure extensions are updated
2. [TextMate](http://macromates.com/download)
3. [Dropbox](https://www.dropbox.com/downloading?os=mac) and change menu bar color in preferences
4. [RubyMine](http://www.jetbrains.com/ruby/) and use RubyMine settings folder from Dropbox
5. [Adobe Creative Cloud](https://creative.adobe.com/)
6. [xScope](http://iconfactory.com/software/xscope)
7. [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
8. [f.lux](http://justgetflux.com/)


### Development

1. Open Xcode and agree to license
2. Terminal
 * Set window to Pro
 * Shells open with `/bin/bash`
 * Set font to 12pt Panic Sans
 * Set window size to 128 x 48
3. [Generate SSH Key](https://help.github.com/articles/generating-ssh-keys)
4. Download and install config files
  `git clone git@github.com:rxgx/dotfiles.git`
5. Install Homebrew
  `ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"`
6. Open Atom from command line
  `ln -s /Applications/Atom.app/Contents/MacOS/Atom /usr/local/bin/atom`


## Optional

### Install TextMate Plugins

1. Install [MissingDrawer plugin](https://github.com/jezdez/textmate-missingdrawer)

        $ curl -L https://github.com/downloads/jezdez/textmate-missingdrawer/MissingDrawer-0.4.0.tmplugin.zip | tar -xf - && open MissingDrawer.tmplugin

2. Install [SASS bundle](https://github.com/fluxsaas/sass-textmate-bundle)

        $ git clone https://github.com/fluxsaas/sass-textmate-bundle.git "Ruby-Saas-Alternative-Syntax.tmbundle"
        $ open Ruby-Saas-Alternative-Syntax.tmbundle

3. Install [SCSS bundle](https://github.com/kuroir/SCSS.tmbundle)

        $ git clone https://github.com/kuroir/SCSS.tmbundle.git
        $ open SCSS.tmbundle

4. Install [Railscasts themes](https://github.com/ryanb/textmate-themes)

        $ git clone https://github.com/ryanb/textmate-themes.git
        $ open textmate-themes/railscasts.tmTheme
        $ open textmate-themes/ryan-light.tmTheme
        $ rm -rf textmate-themes

### Install Ruby Environment

1. [Install rbenv](https://github.com/sstephenson/rbenv#section_2) and [ruby-build](https://github.com/sstephenson/ruby-build):

        $ brew install ruby-build
        $ brew install rbenv
        # Restart shell
        $ rbenv install 1.9.3-p125
        $ rbenv rehash
        $ rbenv global 1.9.3-p125

2. Install [Bundler](http://gembundler.com/)

        # Restart your shell before running
        $ gem install bundler --pre
        $ rbenv rehash

3. Install [PostgreSQL](http://www.postgresql.org/)

        $ brew install postgresql
        $ initdb /usr/local/var/postgres
        # Note: The following command contains the version. You may need to change this depending on what installed.
        $ cp /usr/local/Cellar/postgresql/9.0.4/org.postgresql.postgres.plist ~/Library/LaunchAgents
        $ launchctl load -w ~/Library/LaunchAgents/org.postgresql.postgres.plist
        $ env ARCHFLAGS="-arch x86_64" gem install pg

4. Install [Memcached](http://memcached.org/)

        $ brew install memcached

5. Install [Redis](http://redis.io/)

        $ brew install redis
