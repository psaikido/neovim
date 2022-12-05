local uetel = {}

local pickers = require('telescope.pickers')
local finders = require('telescope.finders')
local conf = require("telescope.config").values


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

uetel.hupoon = function()
    opts = opts or {}
    pickers.new(opts, {
        prompt_title = "colors",
        finder = finders.new_table {
            results = {
                '~/.config',
                '~/bin',
                '~/code',
                '~/Documents/auth',
                '~/dotfiles',
                '~/neovim',
                '~/rchamp',
                '~/sites/hugle.uk',
                '~/sites/chanadmin',
            }
        },
        sorter = conf.generic_sorter(opts),
    }):find()
end

require('telescope').load_extension('media_files')
require('telescope').load_extension('file_browser')

return uetel

