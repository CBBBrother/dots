" отключить совместимость с vi
set nocompatible 

" посдветка синтаксиса
syntax enable

" включить отображение номеров строк
set number

" кодировка файлов
set encoding=utf-8
set termencoding=utf-8

" показывать первую парную скобку после ввода второй 
set showmatch

" включаем виртуальный звонок (мигание вместо спикера)
set visualbell

filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'scrooloose/nerdtree'
Plugin 'tomasr/molokai'
Plugin 'tpope/vim-fugitive'
call vundle#end()
filetype plugin indent on

" установка powerline
let g:powerline_pycmd = 'py3'
set  rtp+=/usr/lib/python3.6/site-packages/powerline/bindings/vim/

" показывать строку статуса всегда
set laststatus=2

" использовать больше цветов в терминале
set t_Co=256

" в gui режиме убираем лишнее
set guioptions=

" включаем подсветку выражения, которое ищется в текст
set hlsearch

" eсли искомое выражения содержит символы в верхнем регистре — ищет с учётом регистра, иначе — без учёта																		
set smartcase

" игнорировать регистр букв при поиске
set ignorecase

" инкрементальный поиск
set incsearch

" размер табуляции в пробелах
set tabstop=4

" ширина 'мягкого' таба
set softtabstop=4

" размер сдвига при нажатии на кнопки < >
set shiftwidth=4

" преобразовывать табуляцию в пробелы
set expandtab

" ширина текста в символах
set textwidth=110

" Ctrl+n позазывает/прячет NERDTree
" при открытии пустого вим, автоматически открывает NERDTree
map <C-n> :NERDTreeToggle<cr>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" установка цветовой схемы
let g:molokai_original=1
colorscheme molokai
