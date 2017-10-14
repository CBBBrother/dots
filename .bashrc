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

export PS1='\e[1m\A \e[1;32m\u@\h \e[1;35m\W\e[1;33m$(parse_git_branch) \e[1;30m\$ \e[0m'

