# ZSH Theme 
local return_code="%(?.%F{green}[^_^]%f.%F{red}[*_*]%f)"

if [[ $UID -eq 0 ]]; then
    local user_host='%{$terminfo[bold]$fg[red]%}%n$reset_color@%m%'
else
    local user_host='%{$terminfo[bold]$bg[magenta]%}%n$reset_color@%m%'
fi

local current_dir='(%{$terminfo[bold]$bg[blue]%}%~%{$reset_color%})'

local git_branch='$(git_prompt_info)%{$reset_color%}'

PROMPT="
╭─┫${user_host} ${current_dir}${git_branch}]
└─%B>%b "
#RPS1="${return_code}"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[yellow]%} <"
ZSH_THEME_GIT_PROMPT_SUFFIX="> %{$reset_color%}"
