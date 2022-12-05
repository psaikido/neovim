local M = {}

require('telescope').setup {
    defaults = {
        prompt_prefix = '> ',
        sorting_strategy = 'ascending',
        winblend = 20,
        -- path_display = {shorten = 1},

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


require('telescope').load_extension('media_files')
require('telescope').load_extension('file_browser')

return M

