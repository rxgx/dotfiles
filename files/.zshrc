# autocomplete for terraform
autoload -U +X bashcompinit && bashcompinit
autoload -U +X compinit && compinit
complete -o nospace -C /usr/local/bin/terraform terraform

# Better history
# Credits to https://coderwall.com/p/jpj_6q/zsh-better-history-searching-with-arrow-keys
autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[[A" up-line-or-beginning-search # Up
bindkey "^[[B" down-line-or-beginning-search # Down

# Load all of the config files in ~/.zsh that end in .zsh
# TIP: Add files you don't want in git to .gitignore
for config_file (~/.zsh/*.zsh); do
  source $config_file
done
