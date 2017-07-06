#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ll='ls -l'
alias la='ls -A'
alias l='ls -CF'

export TERM="xterm-256color"

alias ls='ls --color=auto'
PS1='[$(date +%H:%M)] \[\e[1;32m\]\u@\h\[\e[m\] \[\e[1;36m\]\W\[\e[m\] \$ '
