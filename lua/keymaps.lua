-- HC
vim.g.mapleader = ';'

local keymap = function(key)
    local opts = {
        noremap = true,
        silent = true,
    }

    for i, v in pairs(key) do
        if type(i) == 'string' then opts[i] = v end
    end

    vim.api.nvim_set_keymap (key[1], key[2], key[3], opts)
end


-- General Usage
keymap {'n', '<C-s>', ':w<CR>'}
keymap {'n', '<C-c>', ':q<CR>'}
keymap {'n', '<Esc>', ':nohlsearch<CR>'}
keymap {'n', '<leader>h', ':set hls<CR>'}
keymap {'i', 'kj', '<Esc>'}
keymap {'n', '<leader>ra', ':lua require("reload").all()<CR>'}
keymap {'n', '<leader>b', '<C-w>|<CR>'}
keymap {'v', 'J', ':m \'>+1<CR>gv=gv'} -- move visual lines down
keymap {'v', 'K', ':m \'<-2<CR>gv=gv'} -- move visual lines up

-- Harpoon
local silent = { silent = true }
keymap {'n', "<leader>a", ':lua require("harpoon.mark").add_file()<CR>', silent}
keymap {'n', "<leader>j", ':lua require("harpoon.ui").toggle_quick_menu()<CR>', silent}
keymap {'n', "<leader>ja", ':lua require("harpoon.ui").nav_file(1)<CR>', silent}
keymap {'n', "<leader>js", ':lua require("harpoon.ui").nav_file(2)<CR>', silent}
keymap {'n', "<leader>jd", ':lua require("harpoon.ui").nav_file(3)<CR>', silent}
keymap {'n', "<leader>jf", ':lua require("harpoon.ui").nav_file(4)<CR>', silent}

-- Consider files of 10Mg and above as 'large'
vim.g.LargeFile = 1


-- Airline
vim.g.airline_theme = 'solarized'
vim.g.airline_solarized_bg = 'dark'


-- fugitive - invoke git status
keymap {'n', '<Leader>g', ':Git<CR>'}

-- LSP
-- require('lsp')
-- require('nvim-cmp')


-- Add two spaces macro for markdown
-- Put cursor on starting line first and run @s
vim.cmd("let @s = ':.,$g!/^\\s*$/norm A  '")

--
-- Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>e', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

-- PHPDocBloc
keymap {'n', '<Leader>pd', ':PHPDocBlocks <CR>'} -- search inside files with ripgrep

-- startify
vim.g.startify_change_to_dir = 0 

-- terminal
keymap {'n', '<leader>t', ':sp <Bar> te<CR><C-w><C-r>'}
keymap {'t', '<Esc>', '<C-\\><C-n>'}

-- vimwiki
vim.cmd("let g:vimwiki_global_ext = 0")

vim.cmd("let wiki_hc = {}")
vim.cmd("let wiki_hc.path = '~/crypt/vimwiki/hc/'")
vim.cmd("let wiki_hc.syntax = 'markdown'")
vim.cmd("let wiki_hc.ext = 'md'")

vim.cmd("let wiki_tech = {}")
vim.cmd("let wiki_tech.path = '~/crypt/vimwiki/tech/'")
vim.cmd("let wiki_tech.syntax = 'markdown'")
vim.cmd("let wiki_tech.ext = 'md'")

vim.cmd(
    "let g:vimwiki_list = [wiki_tech, wiki_hc]"
)

keymap {'n', '<leader>w<leader>h', ':VimwikiSplitLink<cr>'}
keymap {'n', '<leader>w<leader>v', ':VimwikiVSplitLink<cr>'}


-- which-key
require("which-key").setup {}
vim.cmd('set timeoutlen=500')

-- helpers
P = function(v)
    print(vim.inspect(v))
    return v
end

