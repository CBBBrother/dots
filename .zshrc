# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
unsetopt beep
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall

zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' menu select=1
zstyle ':completion:*' select-prompt '%SScrolling active: current selection at %p%s'
zstyle :compinstall filename '/home/cbbbrother/.zshrc'

export LANG=en_US.UTF-8

autoload -Uz compinit promptinit
compinit
promptinit
prompt walters
# End of lines added by compinstall
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

alias lla="ls -alh --color=always"
alias ll="ls -lh --color=always"
alias l="ls --color=always"
alias la="ls -a --color=always"
alias e="emacs -mm"
