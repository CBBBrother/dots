set mouse=a

set viminfo=""

set nocompatible

syntax on

set number

set encoding=utf-8
set termencoding=utf-8

" показывать первую парную скобку после ввода второй
set showmatch

" отключаем создание swp файлов
set noswapfile

" показывать строку статуса всегда
set laststatus=2

" включаем подсветку выражения, которое ищется в текст
set hlsearch
nnoremap <silent> <Space> :nohlsearch<BAR>:echo<CR>

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

filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-airline/vim-airline'
Plugin 'majutsushi/tagbar'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
Plugin 'ryanoasis/vim-devicons'
Plugin 'octol/vim-cpp-enhanced-highlight'

call vundle#end()            " required
filetype plugin indent on    " required

set t_Co=256

" запуск CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlPMRU'
let g:ctrlp_working_path_mode = 'ra'

" установка цветовой схемы
set background=dark
let g:gruvbox_contrast_dark = 'medium'
colorscheme gruvbox


" Ctrl+n позазывает/прячет NERDTree
map <C-n> :NERDTreeToggle<cr>


" игнорируем некоторые скомпилированные файлы python и объектники С++ в окне NERDTree
let NERDTreeIgnore = ['\.pyc$', '\.o$']

" Открытие Tagbar справа
nmap <F8> :TagbarToggle<CR>


" добавляет airline в области вкладок
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

let g:NERDTreeDirArrowExpandable = ''
let g:NERDTreeDirArrowCollapsible = ''
