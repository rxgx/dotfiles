#LDFLAGS  -L/usr/local/Cellar/openssl/0.9.8s/lib
#CPPFLAGS -I/usr/local/Cellar/openssl/0.9.8s/include

# Aliases
alias be='bundle exec'
alias bake='bundle exec rake'
alias cuc='bundle exec cucumber'
alias s='bundle exec rspec'
alias subl='/Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl'

alias flushdns='dscacheutil -flushcache'
alias gitserve='git daemon --reuseaddr --base-path=./ --export-all --verbose'
alias apache.server='sudo /usr/sbin/apachectl '
alias mysql.server='/usr/local/Cellar/mysql/5.5.10/support-files/mysql.server '
alias mongorun='mongod run --config /usr/local/Cellar/mongodb/2.0.1-x86_64/mongod.conf'


# Prompt Customization
git_branch() {
    git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

#hg_branch() {
#    hg branch 2> /dev/null | awk '{print " (" $1 ")"}'
#}

export NODE_PATH='/usr/local/lib/node_modules'
export PS1="\[\033[0;32m\]\u\[\033[0;37m\]@\[\033[0;36m\]\h\[\033[0;33m\] \w\[\033[0;35m\]$(git_branch)\[\033[00m\]: "

# This loads RVM into a shell session.
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

# Load RVM into a shell session *as a function*
[[ -s '/Users/rxgx/.rvm/scripts/rvm' ]] && source '/Users/rxgx/.rvm/scripts/rvm'

eval "$(rbenv init -)" 
