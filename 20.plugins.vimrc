"git clone https://github.com/VundleVim/Vundle.vim.git ~/.config/nvim/bundle/Vundle.vim

if g:os == 'Linux'
    set rtp+=~/.config/nvim/bundle/Vundle.vim/
endif

if g:os == 'Darwin'
    set rtp+=~/.config/nvim/bundle/Vundle/
endif

call vundle#begin()
Plugin 'gmarik/vundle'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlp.vim'
Plugin 'phpfolding.vim'
Plugin 'joonty/vdebug'
Plugin 'jreybert/vim-largefile'
Plugin 'iCyMind/NeoSolarized'
call vundle#end()
"Then go :PluginInstall to get the plugins.

colorscheme NeoSolarized
set background=dark
