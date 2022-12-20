-- [[ Basic Keymaps ]]
-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

require('hc.cmp')
require('hc.gitsigns')
require('hc.lsp')
require('hc.lualine')
require('hc.plugins')
require('hc.telescope')
require('hc.treesitter')
require('hc.utils')
require('Comment').setup()
require('hc.hupoon').setup()
require('hc.lifetrak').setup()
require('which-key').setup {}
require('hc.indent_blankline')

vim.cmd('set timeoutlen=500')

-- vim: ts=2 sts=2 sw=2 et
