read -p '%C(yellow)This will overwrite your existing dotfiles!%C(reset) Press start to continue...'
cp ./gemrc ~/
cp ./gitconfig ~/
cp ./gitignore ~/
cp ./profile ~/
source ~/.profile
