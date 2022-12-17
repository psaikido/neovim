require('plugins').setup()
require('utils')
require('config.telescope')

local lsp = require('lsp-zero')
lsp.preset('recommended')
lsp.ensure_installed({
    'pyright',
    'phpactor',
    'sumneko_lua',
})
lsp.nvim_workspace()
lsp.setup()

require('config/lifetrak').setup()
require('config/hupoon').setup()

