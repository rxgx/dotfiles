#!/bin/sh  

cp -arv "./files/." $HOME

sudo chsh -s `which zsh`

source ~/.zshrc
