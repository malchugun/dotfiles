local ret_status="%(?:%{$fg_bold[green]%}⇒:%{$fg_bold[red]%}⇒)"
PROMPT='%{$fg[yellow]%}%M:%{$fg_bold[blue]%}%c${ret_status}%{$reset_color%}$(git_prompt_info)'

ZSH_THEME_GIT_PROMPT_PREFIX=" %{$BG[232]$FG[222]%}(|%{$FG[064]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$FG[222]%}|%{$fg_bold[red]%}⭤%{$reset_color%}$FG[222]%})"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$FG[222]%}|)"
