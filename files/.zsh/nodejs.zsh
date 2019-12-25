# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# Node Environment
export NODE_ENV=development

alias npmlsg='npm list -g --depth=0'
alias npmlsl='npm list -g --depth=0 --link=true'
