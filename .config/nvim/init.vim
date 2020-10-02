let skip_defaults_vim=1

set mouse=a
set tags=tags;./tags

set viminfo=""

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

" отключаем создание swp файлов
set noswapfile

filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'scrooloose/nerdtree'
Plugin 'francoiscabrol/ranger.vim'
Plugin 'junegunn/goyo.vim'
Plugin 'junegunn/limelight.vim'
Plugin 'tomasr/molokai'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-airline/vim-airline'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'majutsushi/tagbar'
Plugin 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plugin 'junegunn/fzf.vim'
Plugin 'mileszs/ack.vim'
Plugin 'liuchengxu/space-vim-theme'

" Syntastic ставится через pacman
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
" пробел выключает подсветку
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

" ширина текста в символах
set textwidth=100

if has('gui_running')
    set guifont=Iosevka\ Term:h14
endif

" Ctrl+n позазывает/прячет NERDTree
map <C-n> :NERDTreeToggle<CR>

" игнорируем некоторые скомпилированные файлы python и объектники С++ в окне NERDTree
let NERDTreeIgnore = ['\.pyc$', '\.o$']

" Открытие Tagbar справа
nmap <F8> :TagbarToggle<CR><C-w><Right>

nmap \r :Files<CR>
nmap \t :Tags<CR>
nmap \b :Buffers<CR>

nmap <C-s> :w<CR>
imap <C-s> <ESC>:w<CR>

" установка цветовой схемы
colorscheme monokai

" добавляет airline в области вкладок
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_experimental_template_highlight = 1

let g:clang_library_path='/usr/local/Cellar/llvm/9.0.0_1/lib'
