"https://github.com/junegunn/vim-plug
"curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
"    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

Plug 'vim-airline/vim-airline' "status line
Plug 'vim-airline/vim-airline-themes' "status line colours
Plug 'tpope/vim-fugitive' "git integrations
Plug 'junegunn/fzf' "fuzzyfinder
Plug 'junegunn/fzf.vim' "fuzzyfinder integrations for vim
Plug 'morhetz/gruvbox' "colours scheme for logging in as root
"Plug 'https://bitbucket.org/psaikido/lifetrak-vim' "my testing
Plug 'iamcco/markdown-preview.nvim'  "on the fly markdown in a browser
Plug 'iCyMind/NeoSolarized' "theme
Plug 'scrooloose/nerdtree' "file browser
Plug 'norcalli/nvim-colorizer.lua' "realtime colouring in source files
Plug 'joonty/vdebug' "php debugging
Plug 'jreybert/vim-largefile' "allows editing of massive files
Plug 'folke/which-key.nvim' "utility for keymappings
call plug#end()

"Go :PlugInstall to get the plugins.

