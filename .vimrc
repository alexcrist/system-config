" Vim Settings
" ----------------------------------------------------------------------

" pathogen plugin manager
execute pathogen#infect()

" open NERDTree when vim opens
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p

" close NERDTree if it's the last thing open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" set vi compatibility off
set nocompatible

" set filetype
filetype plugin indent on

" set 7 lines to cursor when scrolling
set so=7

" hide a buffer when it is abandoned
set hid

" backspace can delete more chars than default
set backspace=eol,start,indent
set whichwrap+=<,>,h,l,[,]

" ignore case when searching
set ignorecase

" highlight search results
set hlsearch

" search before pressing enter
set incsearch

" don't redraw while executing macros
set lazyredraw

" show matching brackets when cursor is over them
set showmatch

" add extra margin to the left
set foldcolumn=1

" enable syntax highlighting
syntax enable

" desert color scheme
try
    colorscheme Tomorrow-Night
catch
endtry

" dark background
set background=dark

" use utf8 encoding
set encoding=utf8

" disable backups
set nobackup
set nowb
set noswapfile

" use spaces instead of tabs
set expandtab

" be smart with tabs
set smarttab

" 1 tab = 4 spaces
set shiftwidth=2
set tabstop=2

" auto indent
set ai

" smart indent
set si

" line numbers
set number

" burn the witch!
set mouse=a


