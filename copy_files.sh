#! /usr/bin/env bash

#   Black        0;30     Dark Gray     1;30
#   Blue         0;34     Light Blue    1;34
#   Green        0;32     Light Green   1;32
#   Cyan         0;36     Light Cyan    1;36
#   Red          0;31     Light Red     1;31
#   Purple       0;35     Light Purple  1;35
#   Brown/Orange 0;33     Yellow        1;33
#   Light Gray   0;37     White         1;37

blue='\x1B[1;33m'
NC='\x1B[0m' # No Color

echo -e "${blue}This will overwrite your existing dotfiles!${NC}"

read -p "Press start to continue..."

declare -a files=(".gemrc" ".gitconfig" ".gitignore" ".npmignore" ".zshrc")

for i in "${files[@]}"
do
    cp "./${i}" "${HOME}/.${i}"
done

source ~/.zprofile
