zstyle ':completion:*' completer _expand _complete _ignored
zstyle ':completion:*' group-name ''
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' menu select=1
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle :compinstall filename '/home/cbbbrother/.zshrc'
PROMPT="%F{green}%*%f:%F{blue}%~%f %% "
autoload -Uz compinit
fpath+=~/.zfunc
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
alias vi="nvim"
alias e="emacs"
alias l='ls'
alias la='ls -a'
alias ll='ls -lh'
alias lla='ls -alh'
export PATH=~/arc:~/.rvm/bin:$PATH
# End of lines configured by zsh-newuser-install
