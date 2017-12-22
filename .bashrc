[ -z "$PS1" ] && return
[[ $- != *i* ]] && return

export TERM="xterm-256color"

alias l='ls -lh --color=always --group-directories-first --sort=size'
alias ls='ls -lh --color=auto'

eval $(dircolors -b $HOME/.config/dir_colours)


source /usr/share/git/completion/git-prompt.sh
export PS1=' \e[1;32m\u \e[1;35m\W\e[1;33m$(__git_ps1 " %s") \e[1;30m\$ \e[0m'

