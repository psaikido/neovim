"To get this to work edit
".config/nvim/init.vim
"source ~/dotfiles/neovim/init.vim

filetype off

"source $HOME/dotfiles/neovim/05.setOs.vimrc
source $HOME/dotfiles/neovim/10.main.vimrc
source $HOME/dotfiles/neovim/20.plugins.vimrc
source $HOME/dotfiles/neovim/30.keyMappings.vimrc

filetype plugin indent on 
