"git clone https://github.com/VundleVim/Vundle.vim.git ~/.config/nvim/bundle/Vundle.vim
"
"Linux
set rtp+=~/.config/nvim/bundle/Vundle.vim/

"Mac
"set rtp+=~/.config/nvim/bundle/Vundle/

call vundle#begin()
Plugin 'gmarik/vundle'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlp.vim'
Plugin 'phpfolding.vim'
call vundle#end()
"Then go :PluginInstall to get the plugins.

filetype plugin indent on 
