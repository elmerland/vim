" Run pathogen
set nocompatible
execute pathogen#infect()

" Remap escape key to j-k
inoremap jk <ESC>
vnoremap jk <ESC>

" Change mapleader to <,>
let mapleader = ","

" Change colon to semicolon
map ; :

" Basic changes to filetype and encoding
syntax on
filetype plugin indent on
set encoding=utf-8

" Set color scheme
"""""""""""""""""""""""""""""""
set t_Co=256
let g:solarized_termcolors=256  
set background=dark 
colorscheme solarized

" Set backup file directory
set swapfile
set dir=~/.vim-backup

" Set tab settings
set tabstop=2
set softtabstop=2
set expandtab

" Show line numbers
set number

" Show vertical line at column 80
set colorcolumn=80

" Highlight matching brackets
set showmatch

