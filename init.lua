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

-- Enable `lukas-reineke/indent-blankline.nvim`
-- See `:help indent_blankline.txt`
require('indent_blankline').setup {
  char = '┊',
  show_trailing_blankline_indent = false,
}

-- which-key
require("which-key").setup {}
vim.cmd('set timeoutlen=500')

-- vim: ts=2 sts=2 sw=2 et
