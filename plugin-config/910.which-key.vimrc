"which-key
lua << EOF
  require("which-key").setup {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  }
EOF

set timeoutlen=500

"local wk = require("which-key")
"wk.register(mappings, opts)
