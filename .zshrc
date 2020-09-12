# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

LS_COLORS='rs=0:di=01;34:ln=01;36:mh=00:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:su=01;37;41:sg=30;43:ca=30;41:tw=30;42:ow=30;42:st=30;44:ex=01;32:*.7z=00;31:*.Z=00;31:*.ace=00;31:*.arj=00;31:*.bz=00;31:*.bz2=00;31:*.cpio=00;31:*.deb=00;31:*.dz=00;31:*.ear=00;31:*.gz=00;31:*.jar=00;31:*.lz=00;31:*.lzh=00;31:*.lzma=00;31:*.rar=00;31:*.rpm=00;31:*.rz=00;31:*.sar=00;31:*.tar=00;31:*.taz=00;31:*.tbz=00;31:*.tbz2=00;31:*.tgz=00;31:*.tlz=00;31:*.txz=00;31:*.tz=00;31:*.war=00;31:*.xz=00;31:*.z=00;31:*.zip=00;31:*.zoo=00;31:*.anx=00;33:*.axv=00;33:*.bmp=00;33:*.cgm=00;33:*.dl=00;33:*.emf=00;33:*.flc=00;33:*.fli=00;33:*.gif=00;33:*.gl=00;33:*.jpeg=00;33:*.jpg=00;33:*.mng=00;33:*.nuv=00;33:*.pbm=00;33:*.pcx=00;33:*.pgm=00;33:*.png=00;33:*.ppm=00;33:*.svg=00;33:*.svgz=00;33:*.tga=00;33:*.tif=00;33:*.tiff=00;33:*.xbm=00;33:*.xcf=00;33:*.xpm=00;33:*.xwd=00;33:*.yuv=00;33:*.asf=00;35:*.avi=00;35:*.flv=00;35:*.m2v=00;35:*.m4v=00;35:*.mkv=00;35:*.mov=00;35:*.mp4=00;35:*.mp4v=00;35:*.mpeg=00;35:*.mpg=00;35:*.ogm=00;35:*.ogv=00;35:*.ogx=00;35:*.qt=00;35:*.rm=00;35:*.rmvb=00;35:*.vob=00;35:*.webm=00;35:*.wmv=00;35:*.aac=00;36:*.au=00;36:*.flac=00;36:*.mid=00;36:*.midi=00;36:*.mka=00;36:*.mp3=00;36:*.mpc=00;36:*.ogg=00;36:*.ra=00;36:*.wav=00;36:*.axa=00;36:*.oga=00;36:*.spx=00;36:*.xspf=00;36:';
export LS_COLORS

alias l='ls --color=always'
alias ll='ls -al --color=always'
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

SAVEHIST=10
HISTFILE=~/.zsh_history

alias -s {avi,mpeg,mov,mpg,m2v,m4v}=mpv
