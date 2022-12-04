-- HC
vim.g.mapleader = ';'


-- General Usage
vim.keymap.set('n', '<C-s>', ':w<CR>', {})
vim.keymap.set('n', '<C-c>', ':q<CR>', {})
vim.keymap.set('n', '<Esc>', ':nohlsearch<CR>', {})
vim.keymap.set('n', '<leader>h', ':set hls<CR>', {})
vim.keymap.set('i', 'kj', '<Esc>', {})
vim.keymap.set('n', '<leader>ra', ':lua require("reload").all()<CR>', {})
vim.keymap.set('n', '<leader>b', '<C-w>|<CR>', {})
vim.keymap.set('v', 'J', ':m \'>+1<CR>gv=gv', {}) -- move visual lines down
vim.keymap.set('v', 'K', ':m \'<-2<CR>gv=gv', {}) -- move visual lines up


-- Harpoon
local silent = { silent = true }
vim.keymap.set('n', "<leader>a", ':lua require("harpoon.mark").add_file()<CR>', silent, {})
vim.keymap.set('n', "<leader>j", ':lua require("harpoon.ui").toggle_quick_menu()<CR>', silent, {})
vim.keymap.set('n', "<leader>ja", ':lua require("harpoon.ui").nav_file(1)<CR>', silent, {})
vim.keymap.set('n', "<leader>js", ':lua require("harpoon.ui").nav_file(2)<CR>', silent, {})
vim.keymap.set('n', "<leader>jd", ':lua require("harpoon.ui").nav_file(3)<CR>', silent, {})
vim.keymap.set('n', "<leader>jf", ':lua require("harpoon.ui").nav_file(4)<CR>', silent, {})


-- fugitive - invoke git status
vim.keymap.set('n', '<Leader>g', ':Git<CR>', {})


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
vim.keymap.set('n', '<Leader>pd', ':PHPDocBlocks <CR>',{}) -- search inside files with ripgrep


-- terminal
vim.keymap.set('n', '<leader>t', ':sp <Bar> te<CR><C-w><C-r>', {})
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>', {})

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

vim.keymap.set('n', '<leader>w<leader>h', ':VimwikiSplitLink<cr>', {})
vim.keymap.set('n', '<leader>w<leader>v', ':VimwikiVSplitLink<cr>', {})


-- which-key
require("which-key").setup {}
vim.cmd('set timeoutlen=500')

-- helpers
P = function(v)
    print(vim.inspect(v))
    return v
end

