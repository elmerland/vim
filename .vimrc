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
" Set save to Ctrl-w
nmap <leader>w :w<CR>

" Cycle between windows in vim
nmap <silent> <C-k> :wincmd k<CR>
nmap <silent> <C-j> :wincmd j<CR>
nmap <silent> <C-h> :wincmd h<CR>
nmap <silent> <C-l> :wincmd l<CR>

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
"""""""""""""""""""""""""""""""
"let g:badwolf_darkgutter = 1
"colorscheme badwolf
"""""""""""""""""""""""""""""""
"colorscheme distinguished
"""""""""""""""""""""""""""""""
"colorscheme molokai
"""""""""""""""""""""""""""""""
"colorscheme lucius

" Set backup file directory
set swapfile
set dir=~/.vim-backup

" Set spell checking
" set spell spelllang=en_us

" Fix spelling with <leader>f
nnoremap <leader>f 1z=

" Toggle spelling visuals with <leader>s
nnoremap <leader>s :set spell!

" Set tab settings
set tabstop=2
set softtabstop=2
set expandtab

" Tab settings
map <leader>] :tabn<CR>
map <leader>[ :tabp<CR>
map <leader>n :tabe<CR>

" Show line numbers
set number

" Show vertical line at column 80
set colorcolumn=80

" Highlight matching brackets
set showmatch

" Set searching options
set incsearch " search as you type
set hlsearch  " higlight matches
:nohlsearch
" Turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

" Set folding settings
set foldenable  " enable folding
set foldlevelstart=10 " exapand all by default
set foldnestmax=10    " set max fold level
set foldmethod=syntax

" open/close folds
nnoremap <space> za

" JavaScript
" Add javascript syntax higlighting.
"au FileType javascript call JavaScriptFold()
