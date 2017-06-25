#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export TERM="screen-256color"

alias ls='ls --color=auto'
PS1='\[\e[1;32m\]\u@\h\[\e[m\] \[\e[1;36m\]\W\[\e[m\] \$ '
