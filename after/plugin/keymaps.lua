-- HC
local silent = { silent = true }


-- General Usage
vim.keymap.set('n', '<C-s>', ':w<CR>', {})
vim.keymap.set('n', '<C-c>', ':q<CR>', {})
vim.keymap.set('n', '<Esc>', ':nohlsearch<CR>', silent, {})
vim.keymap.set('n', '<leader>sh', ':set hls<CR>', {})
vim.keymap.set('i', 'kj', '<Esc>', {})
vim.keymap.set('n', '<leader>ra', ':lua require("hc.utils").reload()<CR>', {})
vim.keymap.set('n', '<leader>b', '<C-w>|<CR>', {desc = "Zoom"})
vim.keymap.set('v', 'J', ':m \'>+1<CR>gv=gv', {desc = "move visual lines down"})
vim.keymap.set('v', 'K', ':m \'<-2<CR>gv=gv', {desc = "move visual lines up"})


-- Telescope
-- See `:help telescope.builtin`
vim.keymap.set('n', '<leader>?', require('telescope.builtin').oldfiles, { desc = '[?] Find recently opened files' })
vim.keymap.set('n', '<leader><space>', require('telescope.builtin').buffers, { desc = '[ ] Find existing buffers' })
vim.keymap.set('n', '<leader>/', function()
  -- You can pass additional configuration to telescope to change theme, layout, etc.
  require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
    winblend = 10,
    previewer = true,
  })
end, { desc = '[/] Fuzzily search in current buffer]' })

vim.keymap.set('n', '<leader>sf', ':Telescope file_browser<cr>', { desc = '[S]earch [F]ile-browser' })
vim.keymap.set('n', '<leader>sh', require('telescope.builtin').help_tags, { desc = '[S]earch [H]elp' })
vim.keymap.set('n', '<leader>sw', require('telescope.builtin').grep_string, { desc = '[S]earch current [W]ord' })
vim.keymap.set('n', '<leader>sg', require('telescope.builtin').live_grep, { desc = '[S]earch by [G]rep' })
vim.keymap.set('n', '<leader>sd', require('telescope.builtin').diagnostics, { desc = '[S]earch [D]iagnostics' })
vim.keymap.set('n', '<leader>ss', require('telescope.builtin').find_files, { desc = '[S]earch file[S]' })


-- Harpoon
local harpoonui = require('harpoon.ui')
local harpoonmark = require('harpoon.mark')
vim.keymap.set('n', "<leader>ha", harpoonmark.add_file, {desc = "harpoon add"})
vim.keymap.set('n', "<leader>hj", harpoonui.toggle_quick_menu, {desc = "harpoon show"})


-- Hupoon
local hupoon = require("hupoon")
vim.keymap.set('n', '<leader>o', hupoon.hupoon, {desc = "hupoon"})
vim.keymap.set('n', '<leader>oh', hupoon.find_home, {desc = "Home Find"})
vim.keymap.set('n', '<leader>of', hupoon.find_here, {desc = "Here Find"})
vim.keymap.set('n', '<leader>op', hupoon.browse_proj, {desc = "Browse Project"})
vim.keymap.set('n', '<leader>ob', hupoon.search_buffer, {desc = "Search Buffer"})


-- lifetrak
vim.keymap.set('n', '<leader>le', require('lifetrak').journal_entry, {desc = "New entry"})
vim.keymap.set('n', '<leader>lj', require('lifetrak').view_down, {desc = "Next entry"})
vim.keymap.set('n', '<leader>lk', require('lifetrak').view_up, {desc = "Previous entry"})


-- Ranger
vim.keymap.set('n', '<leader>e', ':RnvimrToggle<CR>', {})
vim.keymap.set('t', '<leader>e', ':RnvimrToggle<CR>', {})
vim.cmd('let g:rnvimr_enable_picker = 1')
vim.cmd('let g:rnvimr_border_attr = {"fg": 1, "bg": -1}')


-- fugitive - invoke git status
vim.keymap.set('n', '<Leader>g', ':Git<CR>', {})


-- Undotree
vim.keymap.set('n', '<leader>uo', require('undotree').open, { noremap = true, silent = true })
vim.keymap.set('n', '<leader>uc', require('undotree').close, { noremap = true, silent = true })

-- Add two spaces macro for markdown
-- Put cursor on starting line first and run @s
vim.cmd("let @s = ':.,$g!/^\\s*$/norm A  '")


-- PHPDocBloc
-- vim.keymap.set('n', '<Leader>pd', ':PHPDocBlocks <CR>',{}) -- search inside files with ripgrep


-- terminal
vim.keymap.set('n', '<leader>t', ':sp <Bar> te<CR><C-w><C-r>', {})
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>', {})


-- vimwiki
vim.keymap.set('n', '<leader>w<leader>h', ':VimwikiSplitLink<cr>', {})
vim.keymap.set('n', '<leader>w<leader>v', ':VimwikiVSplitLink<cr>', {})


-- tmux nav
vim.keymap.set('n', '<C-h>', ':TmuxNavigateLeft<cr>', silent, {})
vim.keymap.set('n', '<C-l>', ':TmuxNavigateRight<cr>', silent, {})
vim.keymap.set('n', '<C-j>', ':TmuxNavigateDown<cr>', silent, {})
vim.keymap.set('n', '<C-k>', ':TmuxNavigateUp<cr>', silent, {})

-- Keymaps for better default experience
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

