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
keymap {'i', 'kj', '<Esc>'}
-- Consider files of 10Mg and above as 'large'
vim.g.LargeFile = 1

-- Airline
vim.g.airline_theme = 'solarized'
vim.g.airline_solarized_bg = 'dark'

-- Coc
keymap {'n', '<leader>c', '<Cmd>CocCommand explorer<cr>'}

-- fugitive - invoke git status
keymap {'n', '<Leader>g', ':Git<CR>'}

-- Lifetrak
vim.g.lifetrak_metas = {'energy', 'pain', 'mood', 'sleep'}

-- Markdown preview
-- run after install if it doesn't happen automatically - :call mkdp#util#install()'})
keymap {'n', '<Leader>mkp', ':MarkdownPreview<CR>'}
keymap {'n', '<Leader>mks', ':MarkdownPreviewStop<CR>'}
keymap {'n', '<Leader>mkt', ':MarkdownPreviewToggle<CR>'}

-- NeoSolarized
vim.cmd('colorscheme NeoSolarized')
vim.cmd('set background=dark')

-- NERDTree
keymap {'n', '<leader>e', ':NERDTree<CR>'}
keymap {'n', '<leader>s', ':NERDTreeFind<CR>'}
keymap {'n', '<leader>b', ':Bookmark<CR>'}
vim.cmd('let NERDTreeShowBookmarks = 1')
vim.cmd('let NERDTreeMinimalUI = 1')

-- nvim-colorizer
require'colorizer'.setup()

-- telescope
keymap { 'n', '<leader>ff', '<cmd>lua require("telescope.builtin").find_files()<cr>' }
keymap { 'n', '<leader>fg', '<cmd>lua require("telescope.builtin").live_grep()<cr>' }
keymap { 'n', '<leader>fb', '<cmd>lua require("telescope.builtin").buffers()<cr>' }
keymap { 'n', '<leader>fh', '<cmd>lua require("telescope.builtin").help_tags()<cr>' }
keymap { 'n', '<leader>f~', '<cmd>lua require("telescope.builtin").file_browser({cwd="/home/hughie/"})<cr>' }

-- terminal
keymap {'n', '<leader>t', ':sp <Bar> te<CR><C-w><C-r>'}
keymap {'t', '<Esc>', '<C-\\><C-n>'}

-- vimwiki
vim.cmd("let g:vimwiki_list = [{'path': '~/crypt/vimwiki/', 'syntax': 'markdown', 'ext': '.md'}]")
keymap {'n', '<leader>w<leader>h', ':VimwikiSplitLink<cr>'}
keymap {'n', '<leader>w<leader>v', ':VimwikiVSplitLink<cr>'}

-- which-key
require("which-key").setup {}
vim.cmd('set timeoutlen=500')

