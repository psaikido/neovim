M = {}

function M.setup()
    local config = {
        journals = {
            {
                file = '~/crypt/journal/journal.lft',
                metas = {'energy', 'pain', 'mood', 'sleep'},
            },
            {
                file = '~/crypt/journal/journal-tech.lft',
            }
        },

        default_journal_index = 1,
    }

    require('lifetrak').init(config)
end

local lifetrak = require('lifetrak')
local filter_tags = require('lifetrak.filter_tags')
local filter_metas = require('lifetrak.filter_metas')

vim.api.nvim_create_user_command('Lifetrak', function()
    lifetrak.open_current()
  end,
  {nargs = 0, desc = 'Open current journal'}
)

vim.api.nvim_create_user_command('LifetrakChangeCurrent', function()
    lifetrak.change_current()
  end,
  {nargs = 0, desc = 'Change current journal'}
)

vim.api.nvim_create_user_command('LifetrakEntry', function()
    lifetrak.journal_entry()
  end,
  {nargs = 0, desc = 'New journal entry'}
)

vim.api.nvim_create_user_command('LifetrakFilterTags', function()
    filter_tags.choose_tag()
  end,
  {nargs = 0, desc = 'Filter by tag'}
)

vim.api.nvim_create_user_command('LifetrakFilterMetas', function()
    filter_metas.choose_meta()
  end,
  {nargs = 0, desc = 'Filter by tag'}
)

return M

