"------------------------------------------------------------------------------
" Basic and global options
"------------------------------------------------------------------------------
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
"------------------------------------------------------------------------------
" Colors
"------------------------------------------------------------------------------
" {{{
" Set color scheme
set t_Co=256
let g:solarized_termcolors=16
" let colorcolumn="80,".join(range(120,999),",")
set background=dark
colorscheme solarized
" }}}
"------------------------------------------------------------------------------
" Miscelaneous options
"------------------------------------------------------------------------------
" {{{
" Allow backspacing over start of insert
set backspace=eol,start,indent
" Show line numbers
set number
" Wrap text
set wrap
" Wrap text at word breaks
set linebreak
" Allow vim to look for tags recursively
set tags=./tags;~
" Run ctags for project
noremap <Leader>cc :!ctags-proj.sh<CR>
" }}}
"------------------------------------------------------------------------------
" Indentation and tab options
"------------------------------------------------------------------------------
" {{{
" Set tab settings
set tabstop     =2
set softtabstop =2
set shiftwidth  =2
set expandtab
" Always show the status line
set laststatus=2
" }}}
"------------------------------------------------------------------------------
" Mouse options
"------------------------------------------------------------------------------
" {{{
" Enable basic mouse behaviour
set mouse=a
" Support rezising in tmux
if exists('$TMUX')
  set ttymouse=xterm2
endif
" }}}
"------------------------------------------------------------------------------
" Key mappings
"------------------------------------------------------------------------------
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
" <leader>du : duplicate line below
nnoremap <leader>du Vy<esc>p
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
" <leader>ff : Add if statement parenthesis and curly brackets
inoremap <leader>ff <esc>^iif (<esc>$a) {<cr>}<esc><up>$a<cr>
" <leader>fe : Add else if statment parenthesis and curly brackets
inoremap <leader>fe <esc>^<right>aelse if (<esc>$a) {<cr>}<esc><up>$a<cr>
" <leader>fs : add folding marker start
nnoremap <leader>fs i" {{{<esc>j
inoremap <leader>fs " {{{
" <leader>fe : add folding marker end
inoremap <leader>fe " }}}
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
" Paste from clipboard
nnoremap <leader>p "+p
" Copy to clipboard
vnoremap <leader>y "+y
" }}}
"------------------------------------------------------------------------------
" Movement mappings
"------------------------------------------------------------------------------
" {{{
" p : inside parenthesis, can be used to delete/change parameters of function
onoremap p i(
" b : function body, can be used to delete/change a function body
onoremap b /return<cr>
" }}}
"------------------------------------------------------------------------------
" Abbreviations
"------------------------------------------------------------------------------
" {{{
iabbrev adn and
iabbrev waht what
iabbrev tehn then
iabbrev @@ elmer@vt.edu
iabbrev ccopy Copyright 2014 Elmer Landaverde, all rights reserved.
" }}}
"------------------------------------------------------------------------------
" Autocommands
"------------------------------------------------------------------------------
" {{{
" Set folding settings
augroup filetype_folding
  autocmd!
  autocmd FileType vim setlocal foldmethod=marker
  autocmd FileType vim setlocal foldlevelstart=0
augroup END
" }}}
"------------------------------------------------------------------------------
" Plugin comfigurations
"------------------------------------------------------------------------------
" {{{
"------------------------------------------------------------------------------
" Airline plugin
"------------------------------------------------------------------------------
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
"------------------------------------------------------------------------------
" CtrlP plugin
"------------------------------------------------------------------------------
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
"------------------------------------------------------------------------------
" BufferGator and NERDtree
"------------------------------------------------------------------------------
" {{{
" Split VIEWPORT horizontally, with new split on the top
let g:buffergator_viewport_split_policy    = "b"
let g:buffergator_suppress_keymaps         = 1
let g:buffergator_autodismiss_on_select    = 0
let g:buffergator_split_size               = 25
let g:buffergator_show_full_directory_path = 0
" NERDtree settings
let NERDTreeShowHidden                      = 1
let g:nerdtree_tabs_open_on_console_startup = 1
let g:nerdtree_tabs_open_on_gui_startup     = 1
let g:nerdtree_tabs_no_startup_for_diff     = 1
let g:nerdtree_tabs_smart_startup_focus     = 1
let g:nerdtree_tabs_autoclose               = 1
" Start both buffergator and NERDtree on startup
augroup buffergator
  autocmd!
  autocmd VimEnter * NERDTree
  autocmd VimEnter * BuffergatorToggle
  autocmd VimEnter * let g:buffergator_autoupdate = 1
  autocmd VimEnter * wincmd w
augroup END

" Toggle left sidebar: NERDTree and BufferGator
" test per http://justmao.name/life/integrate-nerdtree-and-buffergator/
function! LSidebarToggle()
  let b = bufnr("%")
    execute "NERDTreeToggle | BuffergatorToggle"
    execute "set nonumber!"
    execute ( bufwinnr(b) . "wincmd w" )
endf
nnoremap  <silent> <Leader>w  <esc>:call LSidebarToggle()<cr>
" nnoremap! <silent> <Leader>w  <esc>:call LSidebarToggle()<cr>
" }}}
"------------------------------------------------------------------------------
" Tagbar plugin
"------------------------------------------------------------------------------
" {{{
let g:tagbar_show_visibility = 1
" }}}
"------------------------------------------------------------------------------
" Rainbow paranthesis plugin
"------------------------------------------------------------------------------
" {{{
" Set colors for parenthesis
let g:rbpt_colorpairs = [
    \ ['brown'       , 'RoyalBlue3']  ,
    \ ['Darkblue'    , 'SeaGreen3']   ,
    \ ['darkgray'    , 'DarkOrchid3'] ,
    \ ['darkgreen'   , 'firebrick3']  ,
    \ ['darkcyan'    , 'RoyalBlue3']  ,
    \ ['darkred'     , 'SeaGreen3']   ,
    \ ['darkmagenta' , 'DarkOrchid3'] ,
    \ ['brown'       , 'firebrick3']  ,
    \ ['gray'        , 'RoyalBlue3']  ,
    \ ['black'       , 'SeaGreen3']   ,
    \ ['darkmagenta' , 'DarkOrchid3'] ,
    \ ['Darkblue'    , 'firebrick3']  ,
    \ ['darkgreen'   , 'RoyalBlue3']  ,
    \ ['darkcyan'    , 'SeaGreen3']   ,
    \ ['darkred'     , 'DarkOrchid3'] ,
    \ ['red'         , 'firebrick3']  ,
    \ ]
let g:rbpt_max            = 16
let g:rbpt_loadcmd_toggle = 0
augroup rainbow-parenthesis
  autocmd!
  autocmd VimEnter * RainbowParenthesesToggle
  autocmd Syntax * RainbowParenthesesLoadRound
  autocmd Syntax * RainbowParenthesesLoadSquare
  autocmd Syntax * RainbowParenthesesLoadBraces
augroup END
" }}}
"------------------------------------------------------------------------------
" Changes plugin
"------------------------------------------------------------------------------
" {{{
" Show diff window
nnoremap <leader>di :CL<cr>
" }}}
"------------------------------------------------------------------------------
" Indent guides plugin
"------------------------------------------------------------------------------
" {{{
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level           = 2
let g:indent_guides_guide_size            = 1
let g:indent_guides_auto_colors           = 0
augroup indentguides
  autocmd!
  autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd guibg=#022B34 ctermbg=8
  autocmd VimEnter,Colorscheme * :hi IndentGuidesEven  guibg=#011C22 ctermbg=0
augroup END
" }}}
" }}}

