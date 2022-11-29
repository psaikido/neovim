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
keymap {'v', 'J', ':m \'>+1<CR>gv=gv'} -- move visual lines down
keymap {'v', 'K', ':m \'<-2<CR>gv=gv'} -- move visual lines up

-- Harpoon
local silent = { silent = true }
keymap {'n', "<leader>a", ':lua require("harpoon.mark").add_file()<CR>', silent}
keymap {'n', "<leader>j", ':lua require("harpoon.ui").toggle_quick_menu()<CR>', silent}
keymap {'n', "<leader>ja", ':lua require("harpoon.ui").nav_file(1)<CR>', silent}
keymap {'n', "<leader>js", ':lua require("harpoon.ui").nav_file(2)<CR>', silent}
keymap {'n', "<leader>jd", ':lua require("harpoon.ui").nav_file(3)<CR>', silent}
keymap {'n', "<leader>jf", ':lua require("harpoon.ui").nav_file(4)<CR>', silent}

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
-- require('lsp')
-- require('nvim-cmp')


-- Markdown preview
-- run after install if it doesn't happen automatically - :call mkdp#util#install()'})
keymap {'n', '<Leader>mkp', ':MarkdownPreview<CR>'}
keymap {'n', '<Leader>mks', ':MarkdownPreviewStop<CR>'}
keymap {'n', '<Leader>mkt', ':MarkdownPreviewToggle<CR>'}


-- Add two spaces macro for markdown
-- Put cursor on starting line first and run @s
vim.cmd("let @s = ':.,$g!/^\\s*$/norm A  '")


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

