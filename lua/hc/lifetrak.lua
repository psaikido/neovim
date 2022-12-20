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

return M

