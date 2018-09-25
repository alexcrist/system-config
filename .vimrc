" =============================================================================
" Vim Settings ================================================================
" =============================================================================

" Plugins ---------------------------------------------------------------------

set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'                   " package manager
Plugin 'scrooloose/nerdtree'                    " file tree
Plugin 'vim-airline/vim-airline'                " status bar upgrade
Plugin 'vim-airline/vim-airline-themes'         " status bar upgrade themes
Plugin 'airblade/vim-gitgutter'                 " git gutter
Plugin 'ctrlpvim/ctrlp.vim'                     " fuzzy file search
Plugin 'jiangmiao/auto-pairs'                   " bracket auto closer
Plugin 'scrooloose/syntastic'                   " syntax checker
Plugin 'nathanaelkane/vim-indent-guides'        " indentation guides
Plugin 'alvan/vim-closetag'                     " autocomplete html tags
Plugin 'jelera/vim-javascript-syntax'           " js syntax
Plugin 'othree/javascript-libraries-syntax.vim' " js library syntax
Plugin 'flazz/vim-colorschemes'                 " color scheme
Plugin 'luochen1990/rainbow'                    " rainbow parens!
Plugin 'scrooloose/nerdcommenter'               " easy commenting
Plugin 'terryma/vim-multiple-cursors'           " multiple cursors
Plugin 'bronson/vim-trailing-whitespace'        " whitespace highlighting
Plugin 'Xuyuanp/nerdtree-git-plugin'            " git status in nerdtree
Plugin 'ap/vim-css-color'                       " css color highlighting
Plugin 'wlangstroth/vim-racket'                 " racket

call vundle#end()
filetype plugin indent on
syntax enable

" Plugin Settings -------------------------------------------------------------

" nerdtree - open when vim opesn
"          - switch to opened window
"          - close if last remaining window
"          - minimal UI
"          - show hidden files
"          - single click to open dir, double to open file
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeMinimalUI=1
let NERDTreeShowHidden=1
let NERDTreeMouseMode=2
let NERDTreeIgnore=['.DS_Store', '.git', 'node_modules', '\.sublime-project', '\.sublime-workspace']

" vim-airline - enable powerline fonts
"             - set theme
let g:airline_powerline_fonts=1
let g:airline_theme='murmur'

" ctrlp.vim - set search dir
let g:ctrlp_working_path_mode='ra'
let g:ctrlp_custom_ignore='node_modules\|DS_Store\|git'

" syntastic - enable on open
"           - ignore css, html
let g:syntastic_check_on_open=1
let g:syntastic_mode_map = { "mode": "active", "passive_filetypes": [ "css", "html" ] }

" vim-indent-guides - enable
"                   - set custom colors
let g:indent_guides_auto_colors=0
autocmd VimEnter * IndentGuidesEnable
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=235
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=236

" vim-closetag - enable for .html files
let g:closetag_filenames = "*.html,*.xhtml,*.phtml"

" vim-javascript - enable highlighting plugins
"                - enable code folding
let g:javascript_plugin_jsdoc=1
let g:javascript_plugin_ngdoc=1
let g:javascript_plugin_flow=1

" rainbow - enable
"         - additonal operators
let g:rainbow_active=1
let g:rainbow_conf = { 'operators': '_,\|=\|+\|\*\|-\|\.\|;\||\|&\|?\|:\|<\|>\|%\|/[^/]_' }


" nerdcommenter - add space after comment symbol
"               - allow commenting of empty lines
let g:NERDSpaceDelims=1
let g:NERDCommentEmptyLines=1

" vim-multiple-cursors
let g:multi_cursor_exit_from_visual_mode=0

" nerdtree-git-plugin - simple symbols
let g:NERDTreeIndicatorMapCustom = {
\ "Modified"  : "*",
\ "Staged"    : "+",
\ "Untracked" : "?",
\ "Renamed"   : "➜",
\ "Unmerged"  : "=",
\ "Dirty"     : "*",
\ }

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
set timeoutlen=30                     " short delay on escape
set splitbelow                        " open splits below
set splitright                        " open splits to right
set cursorline                        " highlight current line

" Special Settings ------------------------------------------------------------

" color scheme
colorscheme hybrid_reverse

" trim trailing whitespace on save
autocmd BufWritePre *.js,*.css,*.html :%s/\s\+$//e

" Mappings --------------------------------------------------------------------

" ctrl slash = comment
nmap <C-_> <leader>cl
vmap <C-_> <leader>clgv

" tab to switch windows
nmap <Tab> <C-W><C-W>
nmap <S-Tab> <C-W>W

" tab to indent lines
vmap <Tab> >gv
vmap <S-Tab> <gv

" shift arrow key to highlight stuff
vmap <S-Up> <Up>
vmap <S-Right> <Right>
vmap <S-Down> <Down>
vmap <S-Left> <Left>
nmap <S-Up> v<Up>
nmap <S-Right> v<Right>
nmap <S-Down> v<Down>
nmap <S-Left> v<Left>
imap <S-Up> <Esc>v<Up>
imap <S-Right> <Esc><Right>v<Right>
imap <S-Down> <Esc>v<Down>
imap <S-Left> <Esc>v<Left>

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

