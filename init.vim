:lua require('options')
:lua require('plugins')
:lua require('plugin-config')
:lua require('lsp')
:lua require('nvim-cmp')

source $HOME/neovim/phpfolds.vim

au BufNewFile,BufRead *.md set filetype=markdown
au BufNewFile,BufRead *.md setlocal nospell

