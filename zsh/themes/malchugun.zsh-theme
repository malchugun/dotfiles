export LSCOLORS="exgxfxdxcxdaDahbaDhEaC"
local ret_status="%(?:%{$fg_bold[green]%}⇒:%{$fg_bold[red]%}⇒)"

#RPROMPT='$ZSH_KUBECTL_PROMPT'
#PROMPT='%{$BG[232]%}%{$FG[136]%}[%{$FG[221]%}%M%{$FG[136]%}]%{$reset_color%}${ZSH_USER}%{$fg_bold[blue]%}%c${ret_status}%{$reset_color%}$(git_prompt_info)'
PROMPT='${ZSH_USER}${ret_status}%{$reset_color%}$(git_prompt_info)'

ZSH_THEME_GIT_PROMPT_PREFIX=" $FG[222]%}(%{$BG[232]$FG[222]%}|%{$FG[064]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$FG[222]%}|%{$fg[red]%}✗%{$reset_color%}$FG[222]%})"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$FG[222]%}|%{$fg[green]%}✔%{$reset_color%}$FG[222]%})"

if [[ "$USER" =~ "root" ]]; then
    ZSH_USER="%{$FG[196]%}%n:%{$reset_color%}"
else
    ZSH_USER="%{$FG[159]%}%n:%{$reset_color%}"
fi
