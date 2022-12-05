local M = {}

local pickers = require('telescope.pickers')
local finders = require('telescope.finders')
local conf = require("telescope.config").values
local themes = require('telescope.themes')
local actions = require "telescope.actions"
local action_state = require "telescope.actions.state"

M.hupoon = function()
    opts = opts or {}
    pickers.new(opts, {
        prompt_title = "hupoon",

        finder = finders.new_table {
            results = {
                '~/.config',
                '~/bin',
                '~/code',
                '~/Documents/auth/stage1',
                '~/Documents/auth/submissions',
                '~/dotfiles',
                '~/neovim',
                '~/rchamp',
                '~/sites/hugle.uk',
                '~/sites/chanadmin',
            }
        },

        sorter = conf.generic_sorter(opts),

        layout_config = {
            width = 0.5 
        },

        attach_mappings = function(prompt_bufnr, map)
            actions.select_default:replace(function()
                actions.close(prompt_bufnr)

                local selection = action_state.get_selected_entry()
                require('telescope').extensions.file_browser.file_browser{
                    path = selection[1], 
                    cwd_to_path = true,
                }
            end)
            return true
        end,
    }):find(themes.get_dropdown())
end


M.home_find = function()
    require('telescope.builtin').find_files {
        cwd = '~/'
    }
end


M.browse_proj = function()
    require('telescope').extensions.file_browser.file_browser{}
end


M.search_buffer = function()
    require("telescope.builtin").current_buffer_fuzzy_find()
end


require('telescope').load_extension('file_browser')

return M