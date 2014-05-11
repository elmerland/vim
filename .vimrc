" Run pathogen
execute pathogen#infect()

" Remap escape key to j-k
inoremap jk <ESC>

" Change mapleader to <,>
let mapleader = ","

" Basic changes to filetype and encoding
filetype plugin indent on
syntax on
syntax enable
set encoding=utf-8

" Set color scheme
colorscheme badwolf

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

" Show line numbers
set number

" Highlight current line
" set cursorline

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

