"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Basic and global options
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" {{{
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

" Set backup file directory
set swapfile
set dir=~/.vim-backup
" }}}
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Colors
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" {{{
" Set color scheme
set t_Co=256
let g:solarized_termcolors=256  
set background=dark 
colorscheme solarized
" }}}
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Miscelaneous options
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" {{{
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
" }}}
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Key mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" {{{
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
inoremap <leader>u <esc>viwUeli
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
" <leader>j : split line at cursor position
nnoremap <leader>j i<cr><esc>
" <space> : toggle folding
nnoremap <space> za
" <leader>f : set folding level
nnoremap <leader>f0 :set foldlevel=0<cr>
nnoremap <leader>f1 :set foldlevel=1<cr>
nnoremap <leader>f2 :set foldlevel=2<cr>
" <leader>fs : add folding marker start
<leader>fs i" {{{<esc>j
" <leader>fe : add folding marker end
<leader>fe i" }}}<esc>j
" }}}
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Movement mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" {{{
" p : inside parenthesis, can be used to delete/change parameters of function
onoremap p i(
" b : function body, can be used to delete/change a function body
onoremap b /return<cr>
" }}}
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Abbreviations
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" {{{
iabbrev adn and
iabbrev waht what
iabbrev tehn then
iabbrev @@ elmer@vt.edu
iabbrev ccopy Copyright 2014 Elmer Landaverde, all rights reserved.
" }}}
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Autocommands
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" {{{
" set commenting character for fyle types
augroup filetype_comment_char
  autocmd!
  autocmd FileType python nnoremap <buffer> <localleader>c I#<space><esc>
  autocmd FileType javascript nnoremap <buffer> <localleader>c I//<space><esc>
  autocmd FileType vim nnoremap <buffer> <localleader>c I"<space><esc>
  autocmd FileType c nnoremap <buffer> <localleader>c I//<space><esc>
augroup END

" Add abbreviations for file types
augroup filetype_abbreviations
  autocmd!
  autocmd FileType python :iabbrev <buffer> iff if:
  autocmd FileType javascript :iabbrev <buffer> iff if ()<left>
  autocmd FileType c :iabbrev <buffer> iff if ()<left>
augroup END


" Set folding settings
augroup filetype_folding
  autocmd!
  autocmd FileType vim setlocal foldmethod=marker
  autocmd FileType vim setlocal foldlevelstart=0
augroup END
" }}}
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Status line
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" {{{
set statusline=%-30.30F           " Show file name
set statusline+=%=                " Swicth to the right side 
set statusline+=FileType:\ %y     " Show file type
set statusline+=\                 " Separator
set statusline+=%5l/%L            " Current line / total lines
" }}}
