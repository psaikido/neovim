local M = {}

function M.keymaps()
    vim.cmd('nmapc')
end

function M.all()
    for name,_ in pairs(package.loaded) do
        package.loaded[name] = nil
    end

    M.keymaps()
    vim.notify("keymaps reloaded!", vim.log.levels.INFO)

    dofile(vim.env.MYVIMRC)
    vim.notify("Nvim configuration reloaded!", vim.log.levels.INFO)
end

M.p = function(v)
    print(vim.inspect(v))
end

return M
