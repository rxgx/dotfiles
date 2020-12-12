# autocomplete for terraform
autoload -U +X bashcompinit && bashcompinit
autoload -U +X compinit && compinit
complete -o nospace -C /usr/local/bin/terraform terraform

# Load all of the config files in ~/.zsh that end in .zsh
# TIP: Add files you don't want in git to .gitignore
for config_file (~/.zsh/*.zsh); do
  source $config_file
done
