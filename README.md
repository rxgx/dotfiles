dotfiles
========

To setup a newly created development environment such as ~[Visual Code Online](https://docs.microsoft.com/en-us/visualstudio/online/reference/personalizing)~ [GitHub Codespaces](https://github.com/features/codespaces).

### Instructions

This project is how I manage my dotfiles. I've followed the article [Managing my dotfiles as a git repository] to avoid having to install extra tools and scripts. The contents of this repo are to be copied into your user's home directory by following these steps.

    cd ~
    git init
    git remote add origin git@github.com:rxgx/dotfiles.git
    git fetch
    git checkout -f master

Set your name and email as the global user

    git config --global user.email "EMAIL_ADDRESS"
    git config --global user.name "FIRST_NAME LAST_NAME"

### Customization

Customize the [colors](https://jonasjacek.github.io/colors/) of the prompt.
