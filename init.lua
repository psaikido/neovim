-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

require('hc.plugins')
require('hc.gitsigns')
require('hc.telescope')
require('hc.lsp')
require('hc.treesitter')
require('hc.utils')
require('hc.lifetrak').setup()
require('hc.undotree')
require('hc.neo-tree')
require('hc.colorizer')
require('hc.floaterm')
require('hc.emmet')
require('hc.solarized-osaka')
require('which-key').setup {}
require('Comment').setup()
require('mini.animate').setup()
require('harpoon')

-- vim: ts=2 sts=2 sw=2 et
