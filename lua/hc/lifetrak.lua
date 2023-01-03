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

return M

