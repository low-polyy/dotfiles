local time="%{$fg_bold[default]%}[%D{%H:%M:%S}]%{$reset_color%}"
local current_dir="%B%{$fg[blue]%}%~ %{$reset_color%}"


PROMPT="%(?:${time} %{$fg_bold[default]%}ﬦ $ :%{$fg_bold[red]%}ﬦ $)"
PROMPT+=' %{$fg[cyan]%}%c%{$reset_color%} $(git_prompt_info)'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[cyan]%}git:‹%{$fg[magenta]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[yellow]%} ›"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[yellow]%} ›"
