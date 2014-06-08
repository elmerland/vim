"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Basic and global options
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" {{{
" Run pathogen
set nocompatible
execute pathogen#infect()

" Change mapleader to - and local leader to \
let mapleader     ="-"
let maplocaleader ="\\"

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
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" {{{
" Set color scheme
set t_Co=256
let g:solarized_termcolors=256
let colorcolumn="80,".join(range(120,999),",")
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
" }}}
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Indentation and tab options
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" {{{
" Set tab settings
set tabstop     =2
set softtabstop =2
set shiftwidth  =2
set expandtab
" Always show the status line
set laststatus=2
" }}}
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Mouse options
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" {{{
" Enable basic mouse behaviour
set mouse=a
" Support rezising in tmux
if exists('$TMUX')
  set ttymouse=xterm2
endif
" }}}
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Key mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" {{{
" Remap escape key to j-k
inoremap jk <esc>
" Disable arrow keys in normal and insert mode
noremap <up>    <nop>
noremap <down>  <nop>
noremap <right> <nop>
noremap <left>  <nop>
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
" <leader>f# : set folding level
nnoremap <leader>f0 :set foldlevel=0<cr>
nnoremap <leader>f1 :set foldlevel=1<cr>
nnoremap <leader>f2 :set foldlevel=2<cr>
nnoremap <leader>f9 :set foldlevel=99<cr>
" <leader>a_ : align around character
nnoremap <leader>a= :Tabular /=<cr>
nnoremap <leader>a: :Tabular /:<cr>
nnoremap <leader>a, :Tabular /,<cr>
" <leader>d : duplicate line below
nnoremap <leader>d Vy<esc>p
" <leader>ff : Add if statement parenthesis and curly brackets
inoremap <leader>ff <esc>^iif (<esc>$a) {<cr>}<esc><up>$a<cr>
" <leader>fe : Add else if statment parenthesis and curly brackets
inoremap <leader>fe <esc>^<right>aelse if (<esc>$a) {<cr>}<esc><up>$a<cr>
" <leader>fs : add folding marker start
nnoremap <leader>fs i" {{{<esc>j
" <leader>fe : add folding marker end
nnoremap <leader>fe i" }}}<esc>j
" <leader>< : decrease window width
nnoremap <leader>, 5<c-W><
" <leader>> : increase window width
nnoremap <leader>. 5<c-W>>
" <leader>tt : toggle tagbar
nnoremap <leader>tt :TagbarToggle<cr>
" Tab navigation
nnoremap <leader>te :tabnew<cr>
nnoremap <leader>tc :tabc<cr>
nnoremap <leader>tn :tabn<cr>
nnoremap <leader>tp :tabp<cr>
" Toggle comment block
nnoremap <leader>bb :TCommentBlock<cr>
vnoremap <leader>bb :TCommentBlock<cr>
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
" Set folding settings
augroup filetype_folding
  autocmd!
  autocmd FileType vim setlocal foldmethod=marker
  autocmd FileType vim setlocal foldlevelstart=0
augroup END
" }}}
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Airline plugin
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" {{{
" Set ariline color scheme
let g:airline_theme            = 'tomorrow'
let g:airline_enable_branch    = 1
let g:airline_enable_syntastic = 1
let g:airline_powerline_fonts  = 1

" vim-powerline symbols
let g:airline_left_sep          = '⮀'
let g:airline_left_alt_sep      = '⮁'
let g:airline_right_sep         = '⮂'
let g:airline_right_alt_sep     = '⮃'
let g:airline_branch_prefix     = '⭠'
let g:airline_readonly_symbol   = '⭤'
let g:airline_linecolumn_prefix = '⭡'
" }}}
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CtrlP plugin
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" {{{
" Ignore these files
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
" Set command to start ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
" Set root path to be the closest working directory
let g:ctrlp_working_path_mode = 'ra'
" Ignore the following files
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }
let g:ctrlp_user_command = 'find %s -type f'
" }}}
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Buffergator plugin
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" {{{
" Start buffergator when vim starts
" augroup buffergator
"   autocmd!
"   autocmd VimEnter * BuffergatorToggle
"   autocmd VimEnter * let g:buffergator_autoupdate = 1
"   autocmd VimEnter * wincmd w
" augroup END
" }}}
