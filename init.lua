require('plugins').setup()
require('utils')
require('config.telescope')

local lsp = require('lsp-zero')
lsp.preset('recommended')
lsp.setup()

require('config/lifetrak').setup()
require('config/hupoon').setup()

