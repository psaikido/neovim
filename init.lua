-- [[ Basic Keymaps ]]
-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

require('hc.gitsigns')
require('hc.plugins')
require('hc.telescope')
require('hc.treesitter')
require('hc.utils')
require('Comment').setup()
require('hc.hupoon').setup()
require('hc.lifetrak').setup()
require('hc.indent_blankline')
require('hc.undotree')
require('which-key').setup {}

-- vim: ts=2 sts=2 sw=2 et
