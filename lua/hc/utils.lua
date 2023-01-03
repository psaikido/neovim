local M = {}

function M.keymaps()
  vim.cmd('nmapc')
  vim.notify("keymaps reloaded!", vim.log.levels.INFO)
end

function M.reload()
  for name,_ in pairs(package.loaded) do
    -- if (string.match(name, "^hc")) then
      package.loaded[name] = nil
    -- end
  end

  dofile(vim.env.MYVIMRC)
  vim.notify("nvim reloaded!", vim.log.levels.INFO)
end

M.p = function(v)
  print(vim.inspect(v))
end

return M
