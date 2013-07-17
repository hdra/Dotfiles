set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle
call vundle#rc()

" Let Vundle manage Vundle
Bundle 'gmarik/vundle'
"" My bundles
Bundle 'scrooloose/nerdtree'
Bundle 'Command-T'

filetype plugin indent on
set t_Co=256
colorscheme moria
hi CursorLine cterm=none

set backupdir=~/.vim/tmp
set undodir^=~/.vim/tmp
set noswapfile
set undofile
set showmode
set showcmd
set wildmenu
set cursorline
set number	" Show line numbers
set nowrap	" Wrap lines
set linebreak	" Break lines at word (requires Wrap lines)
set showbreak=+++ 	" Wrap-broken line prefix
set showmatch	" Highlight matching brace
set visualbell	" Use visual bell (no beeping)

set hidden
set encoding=utf-8
set hlsearch	" Highlight all search results
set smartcase	" Enable smart-case search
set ignorecase	" Always case-insensitive
set incsearch	" Searches for strings incrementally
set listchars=eol:↲,tab:⇛-,trail:⋅,extends:>,precedes:<,nbsp:#
set list

set expandtab	" Use spaces instead of tabs
set shiftwidth=4	" Number of auto-indent spaces
set smartindent	" Enable smart-indent
set smarttab	" Enable smart-tabs
set softtabstop=4	" Number of spaces per Tab
set ruler	" Show row and column ruler information

set undolevels=1000	" Number of undo levels
set backspace=indent,eol,start	" Backspace behaviour
set cmdheight=2

nmap <F4> :q!<CR>
imap <F4> <Esc>:q!<CR>
nmap <C-s> :w<CR>
imap <C-s> <Esc>:w<CR>
nmap <C-u> :u<CR>
imap <C-u> <Esc>:u<CR>

" Maps Alt-[h,j,k,l] to resizing a window split
map <silent> <C-h> <C-w><
map <silent> <C-j> <C-w>-
map <silent> <C-k> <C-w>+
map <silent> <C-l> <C-w>>