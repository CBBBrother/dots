[ -z "$PS1" ] && return
[[ $- != *i* ]] && return

alias ll='ls -l'
alias la='ls -A'
alias l='ls -CF'

export TERM="xterm-256color"

alias l='ls -lh --color=always --group-directories-first --sort=size'
alias ls='ls -h --color=auto'

eval $(dircolors -b $HOME/.config/dir_colours)

PS1='[$(date +%H:%M)] \[\e[1;32m\]\u@\h\[\e[m\] \[\e[1;36m\]\W\[\e[m\] \$ '
