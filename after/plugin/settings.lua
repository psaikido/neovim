-- [[ Setting options ]]
-- See `:help vim.o`

-- indentation
vim.o.shiftwidth  = 2
vim.bo.shiftwidth = 2
vim.o.tabstop     = 2
vim.bo.tabstop    = 2

-- Set highlight on search
vim.o.hlsearch = false

-- Line numbers
vim.wo.number         = true
vim.wo.relativenumber = true
vim.o.cmdheight       = 1

-- Hilight cursor line
vim.o.cursorline = true

-- Enable mouse mode
vim.o.mouse = 'a'

-- Enable break indent
vim.o.breakindent = true

-- Save undo history
vim.o.undofile = true

-- Case insensitive searching UNLESS /C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Decrease update time
vim.o.updatetime = 250
vim.wo.signcolumn = 'yes'

-- Set colorscheme
vim.o.termguicolors = true
vim.cmd [[ colorscheme gruvbox ]]
vim.cmd [[ set background=dark ]]
vim.api.nvim_set_hl(0, "Normal", { ctermbg=none })

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'

-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})

-- Open help window in a vertical split to the right.
vim.api.nvim_create_autocmd("BufWinEnter", {
    group = vim.api.nvim_create_augroup("help_window_right", {}),
    pattern = { "*.txt" },
    callback = function()
        if vim.o.filetype == 'help' then vim.cmd.wincmd("L") end
    end
})

vim.cmd('set timeoutlen=500')

