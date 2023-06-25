-- [[ Configure Telescope ]]
-- See `:help telescope` and `:help telescope.setup()`
require('telescope').setup {
  defaults = {
    mappings = {
      i = {
        ['<C-u>'] = false,
        ['<C-d>'] = false,
      },
    },
  },
  extensions = {
    file_browser = {
      hijack_netrw = true,
    },
  },
}

pcall(require('telescope').load_extension, 'fzf')
require('telescope').load_extension 'file_browser'
