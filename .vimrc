" Run pathogen
execute pathogen#infect()

" Remap escape key to j-k
inoremap jk <ESC>

" Change mapleader to <,>
let mapleader = ","

" Basic changes to filetype and encoding
filetype plugin indent on
syntax on
set encoding=utf-8

" Set spell checking
set spell spelllang=en_us
