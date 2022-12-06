require('settings')
require('plugins').setup()
require('keymaps')
require('reload')
require('config.telescope')
require('hupoon')
require('lsp')

require("neodev").setup({})

-- then setup your lsp server as usual
local lspconfig = require('lspconfig')

-- example to setup sumneko and enable call snippets
lspconfig.sumneko_lua.setup({
  settings = {
    Lua = {
      completion = {
        callSnippet = "Replace"
      }
    }
  }
})
