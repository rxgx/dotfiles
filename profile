color_prompt=yes
force_color_prompt=yes

# Prompt Customization
COLOR_NONE='\e[0m' # No Color
COLOR_WHITE='\e[1;37m'
COLOR_BLACK='\e[0;30m'
COLOR_BLUE='\e[0;34m'
COLOR_GREEN='\e[0;32m'
COLOR_CYAN='\e[0;36m'
COLOR_RED='\e[0;31m'
COLOR_PURPLE='\e[0;35m'
COLOR_YELLOW='\e[0;33m'
COLOR_GRAY='\e[0;37m'

git_branch() {
    ref=$(git symbolic-ref HEAD 2> /dev/null) || return
    echo " (${ref#refs/heads/})"
}

PROMPT_COMMAND='PS1="\[${COLOR_GREEN}\]\u\[${COLOR_NONE}\]@\[${COLOR_CYAN}\]\h \[${COLOR_YELLOW}\]\w\[${COLOR_PURPLE}\]$(git_branch)\[${COLOR_NONE}\]: "'

alias dck-clean='docker rm -v $(docker ps -a -q -f status=exited)'
alias dck-prune='docker rmi $(docker images -f "dangling=true" -q)'
alias dck-space='docker rm $(docker ps -aq)'

alias flushdns='sudo killall -HUP mDNSResponder'
alias ipaddress='curl ipinfo.io/ip'
#alias terraform='~/terraform'
alias npmlsg='npm list -g --depth=0'
alias npmlsl='npm list -g --depth=0 --link=true'

# Detect which `ls` flavor is in use
if ls --color > /dev/null 2>&1; then # GNU `ls`
	colorflag="--color"
else # OS X `ls`
	colorflag="-G"
fi

# List all files colorized in long format
alias lsl="ls -l ${colorflag}"

# List all files colorized in long format, including dot files
alias lsa="ls -lash ${colorflag}"

# List only directories
alias lsd='ls -l ${colorflag} | grep "^d"'

# Always use color output for `ls`
alias ls="command ls ${colorflag}"
export LS_COLORS='no=00:fi=00:di=01;34:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.avi=01;35:*.fli=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.ogg=01;35:*.mp3=01;35:*.wav=01;35:'

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Node Environment
export NODE_ENV=development
