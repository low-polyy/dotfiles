local time="%{$fg[green]%}[%D{%H:%M:%S}]%{$reset_color%}"
local lambda_prefix="%{$fg[green]%}[ﬦ]%{$reset_color%}"
local return_code="%(?..%{$fg[red]%}%? %{$reset_color%})"
local user_host="%(!.%{$fg[red]%}.%{$fg[default]%})%n@%m%{$reset_color%}"
local user_symbol='%(!.#.$)'
local current_dir="%{$fg[blue]%}%~ %{$reset_color%}"

local vcs_branch='$(git_prompt_info)$(hg_prompt_info)'
local rvm_ruby='$(ruby_prompt_info)'
local venv_prompt='$(virtualenv_prompt_info)'

PROMPT="${lambda_prefix} ${user_host}:${current_dir}${rvm_ruby}${vcs_branch}${venv_prompt}"
RPROMPT="%B${return_code}%b"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[yellow]%}git:‹%{$fg[magenta]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[yellow]%} ›"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[yellow]%} ›"
