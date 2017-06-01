set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'scrooloose/nerdtree'
Plugin 'valloric/youcompleteme'
Plugin 'tomasr/molokai'
Plugin 'tpope/vim-fugitive'
Plugin 'ctrlpvim/ctrlp.vim'
call vundle#end()
filetype plugin indent on

let g:powerline_pycmd = 'py3'
set  rtp+=/usr/lib/python3.6/site-packages/powerline/bindings/vim/
set laststatus=2
set t_Co=256

scriptencoding utf-8
set encoding=utf-8
set number
set showmatch
set visualbell

set hlsearch
set smartcase
set ignorecase
set incsearch

set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab
set textwidth=110

syntax enable
set exrc
set secure
map <C-n> :NERDTreeToggle<cr>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
let g:molokai_original=1
colorscheme molokai
