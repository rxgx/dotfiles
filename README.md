dotfiles
========

To setup a newly created development environment for [GitHub Codespaces](https://github.com/features/codespaces) and Docker development containers.

### Instructions

This project is how I manage my dotfiles. I've followed the article [Managing my dotfiles as a git repository] to avoid having to install extra tools and scripts. The contents of this repo are to be copied into your user home directory (`~` or `$HOME`) by following these steps.

    cd ~
    git init
    git remote add origin git@github.com:rxgx/dotfiles.git
    git fetch
    git checkout -f main

Set your name and email as the global user

    git config --global user.email "EMAIL_ADDRESS"
    git config --global user.name "FIRST_NAME LAST_NAME"

To use `git diff`, you'll also need to do a global install of `diff-so-fancy`.

    volta install diff-so-fancy
    npm i -g diff-so-fancy

### Customization

Customize the [colors](https://jonasjacek.github.io/colors/) of the prompt.
