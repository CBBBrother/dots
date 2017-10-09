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

ColorOff='\e[0m'
sep=''

green_blue='\e[1;92;44m'
white_black='\e[1;97;30m'
blue_yellow='\e[1;34;43m'
cyan_black='\e[1;30;46m'
green_magenta='\e[1;32;45m'

# separator colors
cyan_blue='\e[0;36;44m'
blue_magenta='\e[0;34;45m'
magenta_yellow='\e[0;35;43m'
yellow_white='\e[0;33;107m'
white_no='\e[0;97;49m'

export PS1=$cyan_black'\A'$cyan_blue$sep$green_blue'\u@\h'\
$blue_magenta$sep$green_magenta'\W'$magenta_yellow$sep$blue_yellow'\
$(parse_git_branch) '$yellow_white$sep$white_black' \$ '$white_no$sep$ColorOff' '

