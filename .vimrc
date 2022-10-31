" enable syntax highlighting
syntax enable
set fileformat=unix
"show line numbers
set number relativenumber
:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

filetype indent on
" set backspace to delete
set nocompatible
set backspace=2
" backspace deletes indent, eol, start
set backspace=indent,eol,start
" search highligthing
set hlsearch
" incremental search
set incsearch
" show a visual line under the cursor's current line
set cursorline
" show the matching part of the pair for [] {} and ()
set showmatch
" utf-8 by default
set enc=utf-8
" use system clippboard
set clipboard=unnamed
" Additional mappings for Esc (useful for MacBook with touch bar)
" inoremap jj <Esc>
inoremap jk <Esc>
" set 256 color
set t_Co=256
" set color scheme
"colorscheme wombat256mod
" create new windows including terminal below
set splitbelow
" allow copying without line numbers
"se mouse+=a
" map W to w
:command W w
:command Wq wq
:command WQ wq

" indentation for file types
au BufNewFile,BufRead *.py,*.pyx,*.pyd,*.qmd
    \ set tabstop=4
    \ softtabstop=4 
    \ shiftwidth=4 
    \ expandtab 
    \ autoindent 
    \ smartindent
    \ smarttab
au BufNewFile,BufRead *.js,*.html,*.css,*.R,*.yml,*.yaml
    \ set tabstop=2
    \ softtabstop=2
    \ shiftwidth=2
    \ expandtab 

" congifuration for slime vim plugin
let g:slime_python_ipython = 1
let g:slime_target = "vimterminal"
let g:slime_vimterminal_config = {"term_finish": "close"}

