[ -z "$PS1" ] && return
[[ $- != *i* ]] && return

export TERM="xterm-256color"

alias l='ls -lh --color=always --group-directories-first --sort=size'
alias ls='ls -lah --color=auto'

eval $(dircolors -b $HOME/.config/dir_colours)

source /usr/share/git/completion/git-prompt.sh

# PS1 Setup
PROMPT_COMMAND=__prompt_command

__prompt_command() {

PS1="\[\e[35m\]度 \h ❱ \[\e[33m\] \u ❱ \[\e[34m\] \W ❱ \[\e[31m\]$(__git_ps1 " %s ❱") \n\[\e[32m\]$ \[\e[0m\]";
}
