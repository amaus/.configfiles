# ZSH Theme - Preview: http://gyazo.com/8becc8a7ed5ab54a0262a470555c3eed.png
local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

# original:
#local user_host='%{$terminfo[bold]$fg[green]%}%n@%m%{$reset_color%}'
# Modified:
local user_host='{%{$fg[blue]%}%n%{$fg[white]%}@%{$fg[red]%}%m%{$reset_color%}'
local current_dir='%{$fg[green]%} %~%{$reset_color%}'

local git_branch='$(git_prompt_info)$(git_project_name)%{$reset_color%}'

PROMPT="╭─${user_host} ${current_dir}
╰─%B$%b "
#RPS1="${return_code}"
RPS1="${git_branch}"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[yellow]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="@"
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}*%{$fg[yellow]%}"
