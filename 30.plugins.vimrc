"git clone https://github.com/VundleVim/Vundle.vim.git ~/.config/nvim/bundle/Vundle.vim

set rtp+=~/.config/nvim/bundle/Vundle.vim/

call vundle#begin()
Plugin 'vim-airline/vim-airline' "status line
Plugin 'vim-airline/vim-airline-themes' "status line colours
Plugin 'fugitive.vim' "git integrations
Plugin 'junegunn/fzf' "fuzzyfinder
Plugin 'junegunn/fzf.vim' "fuzzyfinder integrations for vim
Plugin 'morhetz/gruvbox' "colours scheme for logging in as root
Plugin 'https://bitbucket.org/psaikido/lifetrak-vim' "my testing
Plugin 'iamcco/markdown-preview.nvim'  "on the fly markdown in a browser
Plugin 'iCyMind/NeoSolarized' "theme
Plugin 'scrooloose/nerdtree' "file browser
Plugin 'norcalli/nvim-colorizer.lua' "realtime colouring in source files
Plugin 'phpfolding.vim' "fold php functions
Plugin 'joonty/vdebug' "php debugging
Plugin 'jreybert/vim-largefile' "allows editing of massive files
Plugin 'VundleVim/Vundle.vigmarikm' "plugin manager
Plugin 'folke/which-key.nvim' "utility for keymappings
call vundle#end()
filetype plugin indent on
"Go :PluginInstall to get the plugins.

