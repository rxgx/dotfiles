alias dck-clean='docker rm -v $(docker ps -a -q -f status=exited)'
alias dck-prune='docker rmi $(docker images -f "dangling=true" -q)'
alias dck-space='docker rm $(docker ps -aq)'
alias dck-stat='docker ps -a --format="table {{.ID}}\t{{.Names}}\t{{.Image}}\t{{.Command}}\t{{.Status}}"'
