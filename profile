#LDFLAGS  -L/usr/local/Cellar/openssl/0.9.8s/lib
#CPPFLAGS -I/usr/local/Cellar/openssl/0.9.8s/include

# Prompt Customization
git_branch() {
    ref=$(git symbolic-ref HEAD 2> /dev/null) || return
    echo " (${ref#refs/heads/})"
}

PROMPT_COMMAND='PS1="\[\033[0;32m\]\u\[\033[0;37m\]@\[\033[0;36m\]\h\[\033[0;33m\] \w\[\033[0;35m\]$(git_branch)\[\033[00m\]: "'


# Aliases
alias be='bundle exec'
alias bake='bundle exec rake'
#alias cuc='bundle exec cucumber'
alias dl='cd ~/Downloads'
alias dt='cd ~/Desktop'
#alias s='bundle exec rspec'


# Applications
alias subl='/Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl'


# Tools
alias flushdns='dscacheutil -flushcache'
alias gitserve='git daemon --reuseaddr --base-path=./ --export-all --verbose'


# Services
#alias apache.server='sudo /usr/sbin/apachectl'
#alias mysql.server='/usr/local/Cellar/mysql/5.5.10/support-files/mysql.server'
#alias mongorun='mongod run --config /usr/local/Cellar/mongodb/2.0.1-x86_64/mongod.conf'
#alias redis.server='redis-server /usr/local/etc/redis.conf'


# Detect which `ls` flavor is in use
if ls --color > /dev/null 2>&1; then # GNU `ls`
	colorflag="--color"
else # OS X `ls`
	colorflag="-G"
fi

# List all files colorized in long format
alias l="ls -l ${colorflag}"

# List all files colorized in long format, including dot files
alias la="ls -la ${colorflag}"

# List only directories
alias lsd='ls -l ${colorflag} | grep "^d"'

# Always use color output for `ls`
alias ls="command ls ${colorflag}"
export LS_COLORS='no=00:fi=00:di=01;34:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.avi=01;35:*.fli=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.ogg=01;35:*.mp3=01;35:*.wav=01;35:'

# NVM
source ~/.nvm/nvm.sh

# Set Rails Environment to Development
export RAILS_ENV='development'

# Allow access to the rbenv command-line utility
export PATH="$HOME/.rbenv/bin:$PATH"

# Add rbenv init to your shell to enable shims and autocompletion
eval "$(rbenv init -)"
