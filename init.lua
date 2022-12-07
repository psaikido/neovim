require('settings')
require('plugins').setup()
require('keymaps')
require('utils')
require('lsp')
require("neodev").setup({})
require('config.telescope')
require('config.lsp-lua').setup()
require('lifetrak')
require('hupoon').setup({
    selected_dirs = {
        '~/.config',
        '~/bin',
        '~/code/neovim',
        '~/Documents/auth/stage1',
        '~/Documents/auth/submissions',
        '~/dotfiles',
        '~/neovim',
        '~/rchamp',
        '~/sites/hugle.uk',
        '~/sites/chanadmin',
    }
})

