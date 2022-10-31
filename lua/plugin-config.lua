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
keymap {'n', '<leader>r', ':source $MYVIMRC<CR>'}
keymap {'n', '<leader>b', '<C-w>|<CR>'}


-- Consider files of 10Mg and above as 'large'
vim.g.LargeFile = 1


-- Airline
vim.g.airline_theme = 'solarized'
vim.g.airline_solarized_bg = 'dark'


-- fugitive - invoke git status
keymap {'n', '<Leader>g', ':Git<CR>'}


-- Lifetrak
vim.g.lifetrak_metas = {'energy', 'pain', 'mood', 'sleep'}


-- LSP
require('lsp')
require('nvim-cmp')


-- Markdown preview
-- run after install if it doesn't happen automatically - :call mkdp#util#install()'})
keymap {'n', '<Leader>mkp', ':MarkdownPreview<CR>'}
keymap {'n', '<Leader>mks', ':MarkdownPreviewStop<CR>'}
keymap {'n', '<Leader>mkt', ':MarkdownPreviewToggle<CR>'}


-- NeoSolarized
--vim.cmd('colorscheme NeoSolarized')
--vim.cmd('colorscheme gruvbox')
--vim.cmd('colorscheme nightfox')
vim.cmd('let g:dracula_colorterm = 0')
vim.cmd('colorscheme dracula')
vim.cmd('set background=dark')


-- Ranger rnvimr
keymap {'n', '<leader>e', ':RnvimrToggle<CR>'}
keymap {'t', '<leader>e', ':RnvimrToggle<CR>'}
keymap {'n', '<leader>s', ':RnvimrResize<CR>'}
vim.cmd('let g:rnvimr_enable_picker = 1')
vim.cmd('let g:rnvimr_border_attr = {"fg": 1, "bg": -1}')


-- nvim-colorizer
require 'colorizer'.setup {
  'css'; 
  'scss';
}

-- FuzzyFinder FZF
-- :help fzf-vim
-- https://github.com/junegunn/fzf/blob/master/README-VIM.md
keymap {'n', '<Leader>ff', ':FZF <CR>'} -- search all files from pwd 
keymap {'n', '<Leader>fh', ':FZF ~<CR>'} -- search from home dir
keymap {'n', '<Leader>fg', ':GFiles<CR>'} -- search git files from git 
keymap {'n', '<Leader>fb', ':Buffers<CR>'} -- search buffers
keymap {'n', '<Leader>fr', ':Rg! <CR>'} -- search inside files with ripgrep
--local find_git_root = function()
  --return vim.fn.system('git rev-parse --show-toplevel 2> /dev/null')[:-2]
--end

-- PHPDocBloc
keymap {'n', '<Leader>pd', ':PHPDocBlocks <CR>'} -- search inside files with ripgrep

-- startify
vim.g.startify_change_to_dir = 0 

-- terminal
keymap {'n', '<leader>t', ':sp <Bar> te<CR><C-w><C-r>'}
keymap {'t', '<Esc>', '<C-\\><C-n>'}

-- treesitter
require'nvim-treesitter.configs'.setup {
  ensure_installed = {'php', 'css', 'scss', 'html'},

  -- Install languages synchronously (only applied to `ensure_installed`)
  sync_install = false,

  highlight = {
    -- `false` will disable the whole extension
    enable = true,

    -- list of language that will be disabled
    disable = { "c", "rust" },

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = true,
  },
}
vim.wo.foldmethod = "manual"
vim.wo.foldexpr = "nvim_treesitter#foldexpr()"
vim.wo.foldlevel = 2
vim.wo.foldnestmax = 2
vim.g.foldlevelstart = 99

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
    "let g:vimwiki_list = [wiki_hc, wiki_tech]"
)

keymap {'n', '<leader>w<leader>h', ':VimwikiSplitLink<cr>'}
keymap {'n', '<leader>w<leader>v', ':VimwikiVSplitLink<cr>'}


-- which-key
require("which-key").setup {}
vim.cmd('set timeoutlen=500')

