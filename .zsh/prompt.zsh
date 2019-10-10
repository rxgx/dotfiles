color_prompt=yes
force_color_prompt=yes

setopt prompt_subst

PROMPT='%# %F{green}%n%f@%F{cyan}%m%f %F{yellow}%~%f %F{magenta}$(git_current_branch)%f: '
