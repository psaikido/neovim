local M = {}

function M.setup()
    local config = {
        journals = {
            { 
                file = '~/crypt/journal/journal.lft',
                current_index = 1730,
            },
            { 
                file = '~/crypt/journal/journal-tech.lft',
                current_index = 0,
            }
        },

        metas = {'energy', 'pain', 'mood', 'sleep'},
    }

    require('lifetrak').init(config)
end

return M

