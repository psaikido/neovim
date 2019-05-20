set nocp
set nu
set ai
set mouse=a
set ic
syntax on 
set hlsearch
set nowrap

if g:os == 'Darwin'
    set tabstop=2 softtabstop=2 expandtab shiftwidth=2 smarttab
endif

if g:os == 'Linux'
    set tabstop=4 softtabstop=4 expandtab shiftwidth=4 smarttab
endif

"PHP folding
let g:DisableAutoPHPFolding = 1

"Consider files of 10Mg and above as 'large'
let g:LargeFile = 1
