local M = {}

function M.setup()
    -- https://jdhao.github.io/2021/08/12/nvim_sumneko_lua_conf/
    local runtime_path = vim.split(package.path, ";")
    table.insert(runtime_path, "lua/?.lua")
    table.insert(runtime_path, "lua/?/init.lua")

    require('lspconfig').sumneko_lua.setup({
        on_attach = function(_, bufnr)
          local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
          local opts = { noremap=true, silent=true }

          buf_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
          buf_set_keymap('n', '<leader>sk', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
          buf_set_keymap('n', '<leader>si', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
          buf_set_keymap('n', '<leader>sd', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
          buf_set_keymap('n', '<leader>sr', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
          buf_set_keymap('n', '<leader>se', '<cmd>lua vim.diagnostic.open_float()<CR>', opts)
        end,

        settings = {
            Lua = {
                runtime = {
                    version = "LuaJIT",
                    path = runtime_path,
                },
                diagnostics = {
                    globals = { "vim" },
                },
                workspace = {
                    library = vim.api.nvim_get_runtime_file("", true),
                    checkThirdParty = false,
                },
                telemetry = {
                    enable = false,
                },
            },
        },
    })
end

return M

