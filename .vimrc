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
Plugin 'vim-airline/vim-airline'
call vundle#end()
filetype plugin indent on

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
set textwidth=95

if has('gui_running')
    set guifont=Liberation\ Mono\ for\ Powerline
endif

" Ctrl+n позазывает/прячет NERDTree
" при открытии пустого вим, автоматически открывает NERDTree
map <C-n> :NERDTreeToggle<cr>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" игнорируем некоторые скомпилированные файлы python и объектники С++ в окне NERDTree
let NERDTreeIgnore = ['\.pyc$', '\.o$']

" установка цветовой схемы
let g:hybrid_use_Xresources=1
colorscheme hybrid

" добавляет airline в области вкладок
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

" Page tabs
map <C-1> 1gt
map <C-2> 2gt
map <C-3> 3gt
map <C-4> 4gt
map <C-5> 5gt
map <C-6> 6gt
map <C-7> 7gt
map <C-8> 8gt
map <C-9> 9gt
