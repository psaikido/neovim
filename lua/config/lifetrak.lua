local M = {}

function M.setup()
    require('lifetrak').setup(
        {
            journal= '~/journal.lft',
            -- journal= '~/crypt/journal/journal.lft',
        }
    )
end

return M

