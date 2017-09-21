[ -z "$PS1" ] && return
[[ $- != *i* ]] && return

alias ll='ls -l'
alias la='ls -A'
alias l='ls -CF'

export TERM="xterm-256color"

alias l='ls -lh --color=always --group-directories-first --sort=size'
alias ls='ls -h --color=auto'

eval $(dircolors -b $HOME/.config/dir_colours)

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1='[$(date +%H:%M)] \[\e[1;32m\]\u@\h \[\e[m\]\[\033[32m\]\W\[\033[33m\]$(parse_git_branch)\[\033[00m\] \$ '
