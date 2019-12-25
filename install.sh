#!/bin/sh

cp -arv "`pwd`/files/." $HOME

sudo chsh -s `which zsh`
