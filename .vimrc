" =============================================================================
" Vim Settings ================================================================
" =============================================================================

" Plugins ---------------------------------------------------------------------

set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'            " package manager
Plugin 'scrooloose/nerdtree'             " file tree
Plugin 'vim-airline/vim-airline'         " status bar upgrade
Plugin 'vim-airline/vim-airline-themes'  " status bar upgrade themes
Plugin 'airblade/vim-gitgutter'          " git gutter
Plugin 'nathanaelkane/vim-indent-guides' " indentation guides
Plugin 'jelera/vim-javascript-syntax'    " extra js support
Plugin 'ctrlpvim/ctrlp.vim'              " fuzzy file search

call vundle#end()
filetype plugin indent on
syntax enable

" Plugin Settings -------------------------------------------------------------

" NERDTREE - open when vim opesn
"          - switch to opened window
"          - close if last remaining window
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Indent guides - enable
"               - set custom colors
autocmd VimEnter * IndentGuidesEnable
let g:indent_guides_auto_colors=0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=235
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=234

" Airline - enable powerline fonts
"         - set theme
let g:airline_powerline_fonts=1
let g:airline_theme='tomorrow'

" Javascript - enable syntax highlighting
let g:javascript_plugin_jsdoc=1
let g:javascript_plugin_ngdoc=1

" Ctrlp - set search dir
let g:ctrlp_working_path_mode='ra'
let g:ctrlp_custom_ignore='node_modules\|DS_Store\|git'

" General Settings ------------------------------------------------------------

colorscheme Tomorrow-Night            " colorscheme
autocmd BufWritePre *.js :%s/\s\+$//e " trim trailing whitespace from js files on save
set so=7                              " padding for cursor when scrolling
set hid                               " hide buffer when abandoned
set backspace=eol,start,indent        " backspace can delete more chars
set whichwrap+=<,>,h,l,[,]            " traverse line endings with arrow keys
set ignorecase                        " ignore case when searching
set incsearch                         " search before pressing enter
set lazyredraw                        " don't redraw while executing macros
set showmatch                         " show matching brackets
set foldcolumn=1                      " extra left margin
set encoding=utf8                     " utf-8 encoding
set nobackup                          " disable backups
set nowb                              " ^
set noswapfile                        " ^
set expandtab                         " spaces > tabs
set smarttab                          " smart tab
set shiftwidth=2                      " tab = 2 spaces
set tabstop=2                         " ^
set ai                                " auto indent
set si                                " smart indent
set number                            " line numbers
set mouse=a                           " burn the witch! enables mouse
set nowrap                            " don't wrap lines
set colorcolumn=80,100,120            " rulers
highlight ColorColumn guibg=236

" Mappings --------------------------------------------------------------------

" autocomplete html tags
imap </ </<C-X><C-O>

" tab to switch windows
map <Tab> <C-W><C-W>

" enable numpad
inoremap <Esc>Oq 1
inoremap <Esc>Or 2
inoremap <Esc>Os 3
inoremap <Esc>Ot 4
inoremap <Esc>Ou 5
inoremap <Esc>Ov 6
inoremap <Esc>Ow 7
inoremap <Esc>Ox 8
inoremap <Esc>Oy 9
inoremap <Esc>Op 0
inoremap <Esc>On .
inoremap <Esc>OQ /
inoremap <Esc>OR *
inoremap <Esc>Ol +
inoremap <Esc>OS -
inoremap <Esc>OM <Enter>

