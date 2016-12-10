" General Settings
" ----------------------------------------------------------------------

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
set whichwrap+=<,>,h,l

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
    colorscheme desert
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
set shiftwidth=4
set tabstop=4

" auto indent
set ai

" smart indent
set si

" line numbers
set number

