#!/bin/zsh  

cp -arv "`pwd`/files/." $HOME

sudo chsh -s `which zsh`

source ~/.zshrc
