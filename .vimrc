" General Settings
" ----------------------------------------------------------------------

" set vi compatibility off
set nocompatible

" disable filetype until plugins are loaded
filetype off

" enable filetype plugins
filetype plugin on
filetype indent on

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

" Mappings
" ----------------------------------------------------------------------

" make it easier to enter commands
map <Space> :

" tab switches windows
map <Tab> <C-w><C-w>

" Plugins
" ----------------------------------------------------------------------

" begin plugins
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" plugins
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'hdima/python-syntax'

" close nerd tree if it's the only window
autocmd WinEnter * call s:CloseIfOnlyNerdTreeLeft()
function! s:CloseIfOnlyNerdTreeLeft()
    if exists("t:NERDTreeBufName")
        if bufwinnr(t:NERDTreeBufName) != -1
            if winnr("$") == 1
                q
            endif
        endif
    endif
endfunction

" start nerdtree on start
autocmd VimEnter * NERDTree

" move curosr out of nerdtree window on start
autocmd VimEnter * wincmd p

" end plugins
call vundle#end()
filetype plugin indent on
