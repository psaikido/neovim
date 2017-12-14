"To get this to work edit
".config/nvim/init.vim
"source ~/dotfiles/neovim/init.00.vim

filetype off

source $HOME/dotfiles/neovim/init.01.main.vimrc
source $HOME/dotfiles/neovim/init.02.plugins.vimrc
source $HOME/dotfiles/neovim/init.03.keyMappings.vimrc

filetype plugin indent on 
