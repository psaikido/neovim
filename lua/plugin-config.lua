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
--vim.cmd('colorscheme NeoSolarized')
--vim.cmd('colorscheme gruvbox')
vim.cmd('colorscheme nightfox')
vim.cmd('set background=dark')


-- NERDTree
keymap {'n', '<leader>e', ':NERDTree<CR>'}
keymap {'n', '<leader>s', ':NERDTreeFind<CR>'}
keymap {'n', '<leader>b', ':Bookmark<CR>'}
vim.cmd('let NERDTreeShowBookmarks = 1')
vim.cmd('let NERDTreeMinimalUI = 1')


-- nvim-colorizer
require'colorizer'.setup()


-- FuzzyFinder FZF
-- :help fzf-vim
-- https://github.com/junegunn/fzf/blob/master/README-VIM.md
keymap {'n', '<Leader>fh', ':FZF ~<CR>'} -- search from home dir
keymap {'n', '<Leader>ff', ':FZF<CR>'} -- search all files from pwd
keymap {'n', '<Leader>fg', ':GFiles<CR>'} -- search git files from pwd
keymap {'n', '<Leader>fb', ':Buffers<CR>'} -- search buffers
keymap {'n', '<Leader>fr', ':Rg! <CR>'} -- search inside files with ripgrep


-- terminal
keymap {'n', '<leader>t', ':sp <Bar> te<CR><C-w><C-r>'}
keymap {'t', '<Esc>', '<C-\\><C-n>'}


-- vimwiki
vim.cmd("let wiki_tech = {}")
vim.cmd("let wiki_tech.path = '~/crypt/vimwiki/tech/'")
vim.cmd("let wiki_tech.syntax = 'markdown'")
vim.cmd("let wiki_tech.ext = 'md'")

vim.cmd("let wiki_hc = {}")
vim.cmd("let wiki_hc.path = '~/crypt/vimwiki/hc/'")
vim.cmd("let wiki_hc.syntax = 'markdown'")
vim.cmd("let wiki_hc.ext = 'md'")

vim.cmd(
    "let g:vimwiki_list = [wiki_tech, wiki_hc]"
)

keymap {'n', '<leader>w<leader>h', ':VimwikiSplitLink<cr>'}
keymap {'n', '<leader>w<leader>v', ':VimwikiVSplitLink<cr>'}


-- which-key
require("which-key").setup {}
vim.cmd('set timeoutlen=500')

