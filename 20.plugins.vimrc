"git clone https://github.com/VundleVim/Vundle.vim.git ~/.config/nvim/bundle/Vundle.vim

set rtp+=~/.config/nvim/bundle/Vundle.vim/

call vundle#begin()
Plugin 'w0rp/ale'
Plugin 'mattn/emmet-vim'
Plugin 'fugitive.vim'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'iamcco/markdown-preview.nvim' 
Plugin 'iCyMind/NeoSolarized'
Plugin 'cloudhead/neovim-fuzzy'
Plugin 'scrooloose/nerdtree'
Plugin 'norcalli/nvim-colorizer.lua'
Plugin 'phpfolding.vim'
Plugin 'tpope/vim-unimpaired'
Plugin 'joonty/vdebug'
Plugin 'jreybert/vim-largefile'
Plugin 'gmarik/vundle'
Plugin 'folke/which-key.nvim'
call vundle#end()
filetype plugin indent on
"Go :PluginInstall to get the plugins.

