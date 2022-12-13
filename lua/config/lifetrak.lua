local M = {}

function M.setup()
    local config = {
        journal = '~/journal.lft',
        -- journal = '~/crypt/journal/journal.lft',
        metas = {'energy', 'pain', 'mood', 'sleep'},
    }

    require('lifetrak').init(config)
end

return M

