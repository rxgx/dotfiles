#!/bin/sh

# print currently active shell
shell () {
  ps -p $$ | tail -1 | awk '{print $NF}'
}

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

cp -arv "$DIR/files/." $HOME

sudo chsh -s `which zsh`
