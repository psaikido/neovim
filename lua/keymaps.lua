-- HC
vim.g.mapleader = ';'
local silent = { silent = true }


-- General Usage
vim.keymap.set('n', '<C-s>', ':w<CR>', {})
vim.keymap.set('n', '<C-c>', ':q<CR>', {})
vim.keymap.set('n', '<Esc>', ':nohlsearch<CR>', silent, {})
vim.keymap.set('n', '<leader>h', ':set hls<CR>', {})
vim.keymap.set('i', 'kj', '<Esc>', {})
vim.keymap.set('n', '<leader>ra', ':lua require("reload").all()<CR>', {})
vim.keymap.set('n', '<leader>b', '<C-w>|<CR>', {})
vim.keymap.set('v', 'J', ':m \'>+1<CR>gv=gv', {}) -- move visual lines down
vim.keymap.set('v', 'K', ':m \'<-2<CR>gv=gv', {}) -- move visual lines up


-- Telescope
local builtin = require('telescope.builtin')
local uetel = require("config.telescope")
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>fc', builtin.commands, {})
vim.keymap.set('n', '<leader>df', uetel.home_find, {})
vim.keymap.set('n', '<leader>dh', uetel.hupoon, {})
vim.keymap.set('n', '<leader>dd', uetel.browse_proj, {})
vim.keymap.set('n', '<leader>ds', uetel.search_buffer, {})


-- Harpoon
local harpoonui = require('harpoon.ui')
vim.keymap.set('n', "<leader>a", ':lua require("harpoon.mark").add_file()<CR>', silent, {})
vim.keymap.set('n', "<leader>j", harpoonui.toggle_quick_menu, silent, {})


-- Ranger
vim.keymap.set('n', '<leader>e', ':RnvimrToggle<CR>', {})
vim.keymap.set('t', '<leader>e', ':RnvimrToggle<CR>', {})
vim.cmd('let g:rnvimr_enable_picker = 1')
vim.cmd('let g:rnvimr_border_attr = {"fg": 1, "bg": -1}')


-- fugitive - invoke git status
vim.keymap.set('n', '<Leader>g', ':Git<CR>', {})


-- LSP
-- require('lsp')
-- require('nvim-cmp')


-- Add two spaces macro for markdown
-- Put cursor on starting line first and run @s
vim.cmd("let @s = ':.,$g!/^\\s*$/norm A  '")


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
vim.cmd("let g:vimwiki_list = [wiki_tech, wiki_hc]")
vim.keymap.set('n', '<leader>w<leader>h', ':VimwikiSplitLink<cr>', {})
vim.keymap.set('n', '<leader>w<leader>v', ':VimwikiVSplitLink<cr>', {})


-- tmux nav
vim.keymap.set('n', '<C-h>', ':TmuxNavigateLeft<cr>', silent, {})
vim.keymap.set('n', '<C-l>', ':TmuxNavigateRight<cr>', silent, {})
vim.keymap.set('n', '<C-j>', ':TmuxNavigateDown<cr>', silent, {})
vim.keymap.set('n', '<C-k>', ':TmuxNavigateUp<cr>', silent, {})

-- which-key
require("which-key").setup {}
vim.cmd('set timeoutlen=500')

-- helpers
P = function(v)
    print(vim.inspect(v))
    return v
end

