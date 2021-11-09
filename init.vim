filetype off

source $HOME/dotfiles/neovim/10.main.vimrc
source $HOME/dotfiles/neovim/20.plugins.vimrc
source $HOME/dotfiles/neovim/30.keyMappings.vimrc
source $HOME/dotfiles/neovim/plugin-config/10.ale.vimrc
source $HOME/dotfiles/neovim/plugin-config/20.fugitive.vimrc
source $HOME/dotfiles/neovim/plugin-config/30.fzf.vimrc
source $HOME/dotfiles/neovim/plugin-config/40.NeoSolarized.vimrc
source $HOME/dotfiles/neovim/plugin-config/50.nerdtree.vimrc
source $HOME/dotfiles/neovim/plugin-config/60.nvim-colorizer.vimrc
source $HOME/dotfiles/neovim/plugin-config/70.phpfolding.vimrc
source $HOME/dotfiles/neovim/plugin-config/80.vdebug.vimrc
source $HOME/dotfiles/neovim/plugin-config/90.vim-largefile.vimrc
source $HOME/dotfiles/neovim/plugin-config/910.which-key.vimrc
source $HOME/dotfiles/neovim/40.hc-utils.vimrc
source $HOME/dotfiles/neovim/50.javascript.vimrc
source $HOME/dotfiles/neovim/60.sanskrit.vim
source $HOME/dotfiles/neovim/70.snippets.vimrc
source $HOME/dotfiles/neovim/80.spelling.vimrc
source $HOME/dotfiles/neovim/90.terminal.vimrc

filetype plugin indent on

set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P
