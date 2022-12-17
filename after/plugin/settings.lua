-- stylua: ignore start
-- https://github.com/yashguptaz/nvy/blob/main/lua/options.lua
--
-- Visual
vim.o.conceallevel    = 0 	    -- Make `` Visible in Markdown
vim.o.cmdheight       = 1	    -- Better Error Messages
vim.o.showtabline     = 1 	    -- Always Show Tabline
vim.o.pumheight       = 10      -- Pop up Menu Height
vim.wo.number         = true 	-- Display Line Number 
vim.wo.relativenumber = true 	-- Make relative line numbers default
vim.o.termguicolors   = true	-- Set Terminal Colors
vim.o.title           = true    -- Display File Info on Title
vim.o.showmode        = false	-- Don't Show MODES
vim.wo.signcolumn     = 'no'	-- Sign Column
vim.o.syntax          = 'on'
vim.o.autoindent      = true

-- Behavior
vim.o.hlsearch        = false 	-- Set highlight on search
vim.o.ignorecase      = true 	-- Case insensitive searching 
vim.o.smartcase       = true	-- If Upper Case Char > case sensitive search
vim.o.smarttab        = true	-- Smart Tabs
vim.o.smartindent     = true 	-- Smart Indenting
vim.o.splitbelow      = false 	-- Force Split Below
vim.o.splitright      = false 	-- Force Split Right
vim.o.expandtab       = true
vim.o.tabstop         = 4	    -- Tabstop 
vim.o.softtabstop     = 4
vim.o.shiftwidth      = 4
vim.o.scrolloff       = 3  	    -- Vertical Scroll Offset
vim.o.sidescrolloff   = 0  	    -- Horizontal Scroll Offset
vim.o.mouse           = 'a'	    -- Enable mouse mode

-- Vim specific
vim.o.hidden          = true	    -- Do not save when switching buffers
vim.o.breakindent     = true	    -- Enable break indent
vim.o.backup          = false	    -- Disable Backup
vim.o.swapfile        = false	    -- Don't create Swap Files
vim.o.spell           = false
vim.o.undofile        = true 	    -- Save undo history
vim.o.updatetime      = 250	        -- Decrease update time
vim.o.timeoutlen      = 250	        -- Time for mapped sequence to complete (in ms)
vim.o.inccommand      = 'nosplit'   -- Incremental live completion
vim.o.fileencoding    = "utf-8"	    -- Set File Encoding
vim.o.spelllang       = "en"
vim.o.completeopt     = "menuone,noselect"  -- Autocompletion
vim.opt.shortmess:append { W = true, a = true }
vim.o.undodir         = vim.fn.stdpath("cache") .. "/undo"
-- stylua: ignore end

-- Disable some default plugins
vim.g.loaded_gzip = false
vim.g.loaded_matchit = false
vim.g.loaded_tarPlugin = false
vim.g.loaded_zipPlugin = false
vim.g.loaded_man = false
vim.g.loaded_2html_plugin = false
vim.g.loaded_remote_plugins = false


vim.g.python3_host_prog = "/usr/bin/python"

vim.api.nvim_create_autocmd("FileType", {
    pattern = "markdown",
    command = "setlocal nospell"
})
--
-- Highlight on yank
vim.api.nvim_exec(
    [[
        augroup YankHighlight
        autocmd!
        autocmd TextYankPost * silent! lua vim.highlight.on_yank()
        augroup end
    ]],
    false
)

-- Themes
-- NeoSolarized
--vim.cmd('colorscheme NeoSolarized')
--vim.cmd('colorscheme gruvbox')
--vim.cmd('colorscheme nightfox')
vim.cmd('let g:dracula_colorterm = 0')
vim.cmd('colorscheme dracula')
vim.cmd('set background=dark')


-- Consider files of 10Mg and above as 'large'
vim.g.LargeFile = 1


-- Airline
vim.g.airline_theme = 'solarized'
vim.g.airline_solarized_bg = 'dark'


-- startify
vim.g.startify_change_to_dir = 0 
