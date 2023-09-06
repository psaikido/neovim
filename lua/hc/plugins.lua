local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
	'nvim-lua/plenary.nvim',

	-- Treesitter
	{
		'nvim-treesitter/nvim-treesitter',
		build = function()
			pcall(require('nvim-treesitter.install').update { with_sync = true })
		end,
		dependencies = {
			'nvim-treesitter/nvim-treesitter-textobjects',
		},
	},

	-- LSP
	{
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v2.x',
		dependencies = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},             -- Required
			{'williamboman/mason.nvim'},           -- Optional
			{'williamboman/mason-lspconfig.nvim'}, -- Optional

			-- Autocompletion
			{'hrsh7th/nvim-cmp'},     -- Required
			{'hrsh7th/cmp-nvim-lsp'}, -- Required
			{'L3MON4D3/LuaSnip'},     -- Required
		}
	},

	-- Telescope
	{ 'nvim-telescope/telescope.nvim', branch = '0.1.x', dependencies = { 'nvim-lua/plenary.nvim' } },
	{ "nvim-telescope/telescope-media-files.nvim" },
	{ "nvim-telescope/telescope-file-browser.nvim" },
	{ 'nvim-telescope/telescope-fzf-native.nvim', build = 'make', cond = vim.fn.executable 'make' == 1 },

	-- Utilities
	'folke/which-key.nvim',
	'lewis6991/gitsigns.nvim',
	'numToStr/Comment.nvim',
	'jiaoshijie/undotree',

	-- Lazygit
	{
		'kdheepak/lazygit.nvim',
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
	},

	-- Navigation
	'ThePrimeagen/harpoon',

	{
		"nvim-neo-tree/neo-tree.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
		},
  },
	'preservim/tagbar',
	'christoomey/vim-tmux-navigator',

	-- Look
	'morhetz/gruvbox',
	'echasnovski/mini.animate',
	'vim-airline/vim-airline',

	-- hc
	'psaikido/lifetrak.nvim',
	{
		'vimwiki/vimwiki',
		init = function()
			vim.g.vimwiki_folding = ""
			vim.g.vimwiki_list = {
				{
					path = "~/crypt/vimwiki/hc/",
					syntax = "markdown",
					ext = ".md",
				},
				{
					path = "~/crypt/vimwiki/tech/",
					syntax = "markdown",
					ext = ".md",
				},
			}
			vim.g.vimwiki_ext2syntax = {
				[".md"] = "markdown",
				[".markdown"] = "markdown",
				[".mdown"] = "markdown",
			}
		end,
	},
})

