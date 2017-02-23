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
Plugin 'jelera/vim-javascript-syntax'    " extra js support
Plugin 'ctrlpvim/ctrlp.vim'              " fuzzy file search
Plugin 'Raimondi/delimitMate'            " bracket auto closer
Plugin 'scrooloose/syntastic'            " syntax checker
Plugin 'nathanaelkane/vim-indent-guides' " indentation guides
Plugin 'vim-scripts/JavaScript-Indent'   " js indentation

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

" Airline - enable powerline fonts
"         - set theme
let g:airline_powerline_fonts=1
let g:airline_theme='murmur'

" Ctrlp - set search dir
let g:ctrlp_working_path_mode='ra'
let g:ctrlp_custom_ignore='node_modules\|DS_Store\|git'

" Syntastic - check on open
let g:syntastic_check_on_open=1
let g:syntastic_mode_map = { "mode": "active", "passive_filetypes": [ "css", "html" ] }

" Indent guides - enable
"               - set custom colors
let g:indent_guides_auto_colors=0
autocmd VimEnter * IndentGuidesEnable
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=236
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=237

" General Settings ------------------------------------------------------------

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
set timeoutlen=0                      " no delay on escape

" Special Settings ------------------------------------------------------------

" color scheme
colorscheme Tomorrow-Night

" trim trailing whitespace on save
autocmd BufWritePre *.js :%s/\s\+$//e

" set ruler color
highlight ColorColumn guibg=#333333

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

