# Load all of the config files in ~/.zsh that end in .zsh
# TIP: Add files you don't want in git to .gitignore
for config_file (~/.zsh/*.zsh); do
  source $config_file
done
