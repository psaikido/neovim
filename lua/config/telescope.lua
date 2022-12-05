local uetel = {}

require('telescope').setup {
  defaults = {
      prompt_prefix = '> ',
      sorting_strategy = 'ascending',
      winblend = 20,
      path_display = {shorten = 1},

      layout_config = {
          prompt_position = 'top'
      }
  },

  extensions = {
    media_files = {
      filetypes = {"png", "webp", "jpg", "jpeg"},
      find_cmd = "rg"
    },

    file_browser = {
        grouped = true,
    }
  },
}

uetel.home_find = function()
  require('telescope.builtin').find_files {
      cwd = '~/'
  }
end

uetel.browse_home = function()
    require('telescope').extensions.file_browser.file_browser{
        path = '~',
        cwd_to_path = true,
    }
end

uetel.browse_proj = function()
    require('telescope').extensions.file_browser.file_browser{}
end

uetel.search_buffer = function()
    require("telescope.builtin").current_buffer_fuzzy_find()
end

require('telescope').load_extension('media_files')
require('telescope').load_extension('file_browser')

return uetel

