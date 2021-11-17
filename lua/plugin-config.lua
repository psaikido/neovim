-- HC
vim.g.mapleader = ';'

local keymap = vim.api.nvim_set_keymap

-- General Usage
keymap("n", "<C-s>", ":w<CR>", { noremap = true })
keymap("n", "<C-c>", ":q<CR>", { noremap = true })
keymap("n", "<Esc>", ":nohlsearch<CR>", { noremap = true })
keymap("i", "kj", "<Esc>", { noremap = true, silent = true })

-- Airline
vim.g.airline_theme = 'solarized'
vim.g.airline_solarized_bg = 'dark'

-- fugitive - invoke git status
keymap("n", "<Leader>g", ":Git<CR>", { noremap = true, silent = true })

-- FuzzyFinder FZF
-- Requires Ag (silver) installing from the SilverSearcher
-- :help fzf-vim
-- Use ;a to search in whatever dir the current working directory is in.
-- Use ;* for the same but look for the word under the cursor.
-- Use ;ah to search from the home directory.
-- Because I've put a .gitignore in $HOME it controls what dirs get looked at.
keymap("n", "<Leader>a", ":Ag<CR>", { noremap = true, silent = true })

-- Lifetrak
vim.g.lifetrak_metas = {'energy', 'pain', 'mood', 'sleep'}

-- Markdown preview
keymap("n", "<Leader>mkp", ":MarkdownPreview<CR>", { noremap = true, silent = true })
keymap("n", "<Leader>mks", ":MarkdownPreviewStop<CR>", { noremap = true, silent = true })
keymap("n", "<Leader>mkt", ":MarkdownPreviewToggle<CR>", { noremap = true, silent = true })

-- NeoSolarized
vim.cmd('colorscheme NeoSolarized')
vim.cmd('set background=dark')

-- NERDTree
keymap("n", "<leader>e", ":NERDTree<CR>", { noremap = true, silent = true })
keymap("n", "<leader>s", ":NERDTreeFind<CR>", { noremap = true, silent = true })
keymap("n", "<leader>b", ":Bookmark<CR>", { noremap = true, silent = true })
vim.cmd('let NERDTreeShowBookmarks = 1')
vim.cmd('let NERDTreeMinimalUI = 1')

-- nvim-colorizer
require'colorizer'.setup()

-- Consider files of 10Mg and above as 'large'
vim.g.LargeFile = 1

-- which-key
require("which-key").setup {}
vim.cmd('set timeoutlen=500')

