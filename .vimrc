" Run pathogen
set nocompatible
execute pathogen#infect()


" Change mapleader to - and local leader to \
let mapleader = "-"
let maplocaleader = "\\"

" Change colon to semicolon
noremap ; :

" Basic changes to filetype and encoding
syntax on
filetype plugin indent on
set encoding=utf-8

" Set color scheme
set t_Co=256
let g:solarized_termcolors=256  
set background=dark 
colorscheme solarized

" Set backup file directory
set swapfile
set dir=~/.vim-backup

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set miscelaneous options
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Allow backspacing over start of insert
set backspace=eol,start,indent
" Show line numbers
set number
" Wrap text
set wrap
" Wrap text at word breaks
set linebreak
" Display marker at column 80
set colorcolumn=80
" Show invisible character
set nolist
" Show tabs
set listchars=tab:\|\ 
" Set tab stop
set tabstop=2
set softtabstop=2
set expandtab
set shiftwidth=2

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Key mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Remap escape key to j-k
inoremap jk <esc>
" Disable arrow keys in normal and insert mode
noremap <up> <nop>
noremap <down> <nop>
noremap <right> <nop>
noremap <left> <nop>
" -- : delete current line and place it below line
noremap -- ddp
" __ : delete current line and place it above line
noremap __ ddkP
" <leader>u : upper case current word (insert mode)
" inoremap <leader>u <esc>viwUeli
" <leader>u : uppder case current word (normal mode)
nnoremap <leader>u viwUe
" <leader>ev : Open .vimrc in a new split to edit
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
" <leader>sv : source .vimrc
nnoremap <leader>sv :source $MYVIMRC<cr>
" <leader>" : surround current word with double quotes
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
" <leader>' : surround current word with single quotes
nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel
" <leader>s : toggle set list option
nnoremap <leader>l :set list!<cr>
" <leader>0 : go to the first non-blank character of the line
nnoremap <leader>0 ^
" <leader>e : go to the end of the line
nnoremap <leader>1 $

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Movement mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" p : inside parenthesis, can be used to delete/change parameters of function
onoremap p i(
" b : function body, can be used to delete/change a function body
onoremap b /return<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Abbreviations for insert mode
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

iabbrev adn and
iabbrev waht what
iabbrev tehn then
iabbrev @@ elmer@vt.edu
iabbrev ccopy Copyright 2014 Elmer Landaverde, all rights reserved.

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Autocommands
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" set commenting character for fyle types
autocmd FileType python nnoremap <buffer> <localleader>c I#<space><esc>
autocmd FileType javascript nnoremap <buffer> <localleader>c I//<space><esc>
autocmd FileType vim nnoremap <buffer> <localleader>c I"<space><esc>
autocmd FileType c nnoremap <buffer> <localleader>c I//<space><esc>

" Add abbreviations for file types
autocmd FileType python :iabbrev <buffer> iff if:
autocmd FileType javascript :iabbrev <buffer> iff if ()<left>
autocmd FileType c :iabbrev <buffer> iff if ()<left>
