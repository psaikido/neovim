local M = {}

require('telescope').setup {
  defaults = {
      prompt_prefix = '> ',
      sorting_strategy = 'ascending',

      layout_config = {
          prompt_position = 'top'
      }
  },

  extensions = {
    media_files = {
      filetypes = {"png", "webp", "jpg", "jpeg"},
      find_cmd = "rg" -- find command (defaults to `fd`)
    }
  },
}

function M.home_find()
  require('telescope.builtin').find_files {
      cwd = '~/'
  }
end

require('telescope').load_extension('media_files')
require('telescope').load_extension('file_browser')

return M

