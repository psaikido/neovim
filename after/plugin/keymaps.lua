-- HC
-- vim.g.mapleader = ';'
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

vim.keymap.set('n', '<leader>sf', require('telescope.builtin').find_files, { desc = '[S]earch [F]iles' })
vim.keymap.set('n', '<leader>sh', require('telescope.builtin').help_tags, { desc = '[S]earch [H]elp' })
vim.keymap.set('n', '<leader>sw', require('telescope.builtin').grep_string, { desc = '[S]earch current [W]ord' })
vim.keymap.set('n', '<leader>sg', require('telescope.builtin').live_grep, { desc = '[S]earch by [G]rep' })
vim.keymap.set('n', '<leader>sd', require('telescope.builtin').diagnostics, { desc = '[S]earch [D]iagnostics' })


-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float)
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist)


-- Harpoon
local harpoonui = require('harpoon.ui')
local harpoonmark = require('harpoon.mark')
vim.keymap.set('n', "<leader>ha", harpoonmark.add_file, {desc = "harpoon add"})
vim.keymap.set('n', "<leader>hj", harpoonui.toggle_quick_menu, {desc = "harpoon show"})


-- Hupoon
local hupoon = require("hupoon")
vim.keymap.set('n', '<leader>u', hupoon.hupoon, {desc = "hupoon"})
vim.keymap.set('n', '<leader>uh', hupoon.find_home, {desc = "Home Find"})
vim.keymap.set('n', '<leader>uf', hupoon.find_here, {desc = "Here Find"})
vim.keymap.set('n', '<leader>up', hupoon.browse_proj, {desc = "Browse Project"})
vim.keymap.set('n', '<leader>ub', hupoon.search_buffer, {desc = "Search Buffer"})


-- Ranger
vim.keymap.set('n', '<leader>e', ':RnvimrToggle<CR>', {})
vim.keymap.set('t', '<leader>e', ':RnvimrToggle<CR>', {})
vim.cmd('let g:rnvimr_enable_picker = 1')
vim.cmd('let g:rnvimr_border_attr = {"fg": 1, "bg": -1}')


-- fugitive - invoke git status
vim.keymap.set('n', '<Leader>g', ':Git<CR>', {})


-- lifetrak
local lifetrak = require('lifetrak')
local filter_tags = require('lifetrak.filter_tags')
vim.keymap.set('n', '<leader>lj', lifetrak.view_down, {desc = "Next entry"})
vim.keymap.set('n', '<leader>lk', lifetrak.view_up, {desc = "Previous entry"})
vim.keymap.set('n', '<leader>le', lifetrak.journal_entry, {desc = "New entry"})
vim.keymap.set('n', '<leader>lc', lifetrak.change_current, {desc = "Change current journal"})
vim.keymap.set('n', '<leader>lo', lifetrak.open_current, {desc = "Open current journal"})
vim.keymap.set('n', '<leader>lt', filter_tags.choose_tag, {desc = "Filter by tag"})
-- command! Lifetrak execute ":lua require('lifetrak').open_current()"
-- command! LifetrakChangeCurrent execute ":lua require('lifetrak').change_current()"
-- command! LifetrakEntry execute ":lua require('lifetrak').journal_entry()"
-- command! LifetrakFilterMetas execute ":lua require('lifetrak.filter_metas').choose_meta()"
-- command! LifetrakFilterTags execute ":lua require('lifetrak').choose_tag()"



-- Add two spaces macro for markdown
-- Put cursor on starting line first and run @s
vim.cmd("let @s = ':.,$g!/^\\s*$/norm A  '")


-- PHPDocBloc
-- vim.keymap.set('n', '<Leader>pd', ':PHPDocBlocks <CR>',{}) -- search inside files with ripgrep


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

-- Keymaps for better default experience
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

