#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export TERM="screen-256color"

powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
. /usr/lib/python3.6/site-packages/powerline/bindings/bash/powerline.sh

alias ls='ls --color=auto'
PS1='\[\e[1;32m\]\u@\h\[\e[m\] \[\e[1;36m\]\W\[\e[m\] \$ '
