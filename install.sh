#!/bin/sh

# print currently active shell
shell () {
  ps -p $$ | tail -1 | awk '{print $NF}'
}

cp -arv "`pwd`/files/." $HOME

sudo chsh -s `which zsh`
