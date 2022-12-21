local M = {}

function M.keymaps()
    vim.cmd('nmapc')
    vim.notify("keymaps reloaded!", vim.log.levels.INFO)
end

function M.reload()
    require('plenary.reload').reload_module('hc')
    vim.notify("Nvim configuration reloaded!", vim.log.levels.INFO)
end

M.p = function(v)
    print(vim.inspect(v))
end

return M
