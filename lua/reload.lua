local M = {}

M.keymaps = function()
    vim.cmd('nmapc')
end

M.all = function()
    for name,_ in pairs(package.loaded) do
        package.loaded[name] = nil
    end

    M.keymaps()
    vim.notify("keymaps reloaded!", vim.log.levels.INFO)

    dofile(vim.env.MYVIMRC)
    vim.notify("Nvim configuration reloaded!", vim.log.levels.INFO)
end

return M
