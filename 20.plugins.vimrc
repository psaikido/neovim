"git clone https://github.com/VundleVim/Vundle.vim.git ~/.config/nvim/bundle/Vundle.vim

set rtp+=~/.config/nvim/bundle/Vundle.vim/

call vundle#begin()
Plugin 'gmarik/vundle'
Plugin 'scrooloose/nerdtree'
Plugin 'cloudhead/neovim-fuzzy'
Plugin 'phpfolding.vim'
Plugin 'joonty/vdebug'
Plugin 'jreybert/vim-largefile'
Plugin 'iCyMind/NeoSolarized'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'fugitive.vim'
Plugin 'w0rp/ale'
Plugin 'mattn/emmet-vim'
call vundle#end()
filetype plugin indent on
"Go :PluginInstall to get the plugins.

colorscheme NeoSolarized
set background=dark

let g:ale_linters = {}
let g:ale_linters.javascript = ['eslint']
let g:ale_linters_eslint_use_global = 1
