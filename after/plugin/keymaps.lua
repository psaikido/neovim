-- HC
vim.g.mapleader = ';'
local silent = { silent = true }


-- General Usage
vim.keymap.set('n', '<C-s>', ':w<CR>', {})
vim.keymap.set('n', '<C-c>', ':q<CR>', {})
vim.keymap.set('n', '<Esc>', ':nohlsearch<CR>', silent, {})
vim.keymap.set('n', '<leader>sh', ':set hls<CR>', {})
vim.keymap.set('i', 'kj', '<Esc>', {})
vim.keymap.set('n', '<leader>ra', ':lua require("utils").all()<CR>', {})
vim.keymap.set('n', '<leader>b', '<C-w>|<CR>', {desc = "Zoom"})
vim.keymap.set('v', 'J', ':m \'>+1<CR>gv=gv', {desc = "move visual lines down"})
vim.keymap.set('v', 'K', ':m \'<-2<CR>gv=gv', {desc = "move visual lines up"})


-- Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {desc = "Find Files"})
-- vim.keymap.set('n', '<leader>ff', builtin.find_files, {search_dirs={"~/.rchamp","~/dotfiles"}})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {desc = "Live Grep"})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {desc = "Buffers"})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {desc = "Help"})
vim.keymap.set('n', '<leader>fc', builtin.commands, {desc = "Commands"})
vim.keymap.set('n', '<leader>fd', builtin.diagnostics,{desc = "Diagnostics"})


-- Harpoon
local harpoonui = require('harpoon.ui')
local harpoonmark = require('harpoon.mark')
vim.keymap.set('n', "<leader>a", harpoonmark.add_file, {desc = "harpoon add"})
vim.keymap.set('n', "<leader>j", harpoonui.toggle_quick_menu, {desc = "harpoon show"})


-- Hupoon
local hupoon = require("hupoon")
vim.keymap.set('n', '<leader>h', hupoon.hupoon, {desc = "hupoon"})
vim.keymap.set('n', '<leader>hh', hupoon.find_home, {desc = "Home Find"})
vim.keymap.set('n', '<leader>hf', hupoon.find_here, {desc = "Here Find"})
vim.keymap.set('n', '<leader>hp', hupoon.browse_proj, {desc = "Browse Project"})
vim.keymap.set('n', '<leader>hb', hupoon.search_buffer, {desc = "Search Buffer"})


-- Ranger
vim.keymap.set('n', '<leader>e', ':RnvimrToggle<CR>', {})
vim.keymap.set('t', '<leader>e', ':RnvimrToggle<CR>', {})
vim.cmd('let g:rnvimr_enable_picker = 1')
vim.cmd('let g:rnvimr_border_attr = {"fg": 1, "bg": -1}')


-- fugitive - invoke git status
vim.keymap.set('n', '<Leader>g', ':Git<CR>', {})


-- lifetrak
local lifetrak = require('lifetrak')
vim.keymap.set('n', '<leader>lj', lifetrak.view_down, {desc = "Next entry"})
vim.keymap.set('n', '<leader>lk', lifetrak.view_up, {desc = "Previous entry"})
vim.keymap.set('n', '<leader>le', lifetrak.journal_entry, {desc = "New entry"})
vim.keymap.set('n', '<leader>lt', lifetrak.choose_tag, {desc = "Filter by tag"})


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

