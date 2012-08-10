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
alias cuc='bundle exec cucumber'
alias s='bundle exec rspec'
alias subl='/Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl'

alias flushdns='dscacheutil -flushcache'
alias gitserve='git daemon --reuseaddr --base-path=./ --export-all --verbose'
alias websrv='sudo /usr/sbin/apachectl'
alias dbsrv='/usr/local/Cellar/mysql/5.5.10/support-files/mysql.server'
alias mongorun='mongod run --config /usr/local/Cellar/mongodb/2.0.1-x86_64/mongod.conf'


# rbenv
eval "$(rbenv init -)"


# node.js
export NODE_PATH='/usr/local/lib/node_modules'

