local M = {}

function M.setup()
    require('lifetrak').setup(
        {
            journal = '~/journal.lft',
        }
    )
end

return M

