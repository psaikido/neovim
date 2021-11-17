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
keymap {'n', '<C-s>', ':w<CR>', ''}
keymap {'n', '<C-c>', ':q<CR>', ''}
keymap {'n', '<Esc>', ':nohlsearch<CR>', ''}
keymap {'i', 'kj', '<Esc>', ''}

-- Airline
vim.g.airline_theme = 'solarized'
vim.g.airline_solarized_bg = 'dark'

-- fugitive - invoke git status
keymap {'n', '<Leader>g', ':Git<CR>', ''}

-- FuzzyFinder FZF
-- Requires Ag (silver) installing from the SilverSearcher
-- :help fzf-vim
-- Use ;a to search in whatever dir the current working directory is in.
-- Use ;* for the same but look for the word under the cursor.
-- Use ;ah to search from the home directory.
-- Because I've put a .gitignore in $HOME it controls what dirs get looked at.
keymap {'n', '<Leader>a', ':Ag<CR>', ''}

-- Lifetrak
vim.g.lifetrak_metas = {'energy', 'pain', 'mood', 'sleep'}

-- Markdown preview
keymap {'n', '<Leader>mkp', ':MarkdownPreview<CR>', ''}
keymap {'n', '<Leader>mks', ':MarkdownPreviewStop<CR>', ''}
keymap {'n', '<Leader>mkt', ':MarkdownPreviewToggle<CR>', ''}

-- NeoSolarized
vim.cmd('colorscheme NeoSolarized')
vim.cmd('set background=dark')

-- NERDTree
keymap {'n', '<leader>e', ':NERDTree<CR>', ''}
keymap {'n', '<leader>s', ':NERDTreeFind<CR>', ''}
keymap {'n', '<leader>b', ':Bookmark<CR>', ''}
vim.cmd('let NERDTreeShowBookmarks = 1')
vim.cmd('let NERDTreeMinimalUI = 1')

-- nvim-colorizer
require'colorizer'.setup()

-- Consider files of 10Mg and above as 'large'
vim.g.LargeFile = 1

-- which-key
require("which-key").setup {}
vim.cmd('set timeoutlen=500')

