set number
set autoindent
set mouse=a
set ignorecase
set syntax=on 
set hlsearch
set wrap
set tabstop=4 softtabstop=4 expandtab shiftwidth=4 smarttab
set termguicolors
set autochdir
set wildmenu
filetype plugin on

" Don't use python2, force python3.
let g:loaded_python_provider = 0
let g:python3_host_prog = '/usr/bin/python3'
set pyxversion=3
