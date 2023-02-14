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

  -- Telescope
  { 'nvim-telescope/telescope.nvim', branch = '0.1.x', dependencies = { 'nvim-lua/plenary.nvim' } },
  { "nvim-telescope/telescope-media-files.nvim" },
  { "nvim-telescope/telescope-file-browser.nvim" },
  { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make', cond = vim.fn.executable 'make' == 1 },

  -- Utilities
  'christoomey/vim-tmux-navigator',
  'folke/which-key.nvim',
  'kevinhwang91/rnvimr',
  'lewis6991/gitsigns.nvim',
  'lukas-reineke/indent-blankline.nvim',
  'mattn/emmet-vim',
  'numToStr/Comment.nvim',
  'vim-airline/vim-airline',
  'tpope/vim-fugitive',
  'tpope/vim-rhubarb',
  'vimwiki/vimwiki',
  'jiaoshijie/undotree',
  {
    'phaazon/mind.nvim',
    branch = 'v2.2',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      require'mind'.setup({ 
        opts = {
          persistence = {
            state_path = '~/crypt/mind.nvim/mind.json',
            data_dir = '~/crypt/mind.nvim/data',
          },
        },
      })
    end
  },
  ({
    "iamcco/markdown-preview.nvim",
    build = function() vim.fn["mkdp#util#install"]() end,
  }),

  -- Look
  'dracula/vim',
  'morhetz/gruvbox',

  -- hc
  'psaikido/harpoon',
	{ 
		dir = '~/code/nvim-plugins-hc/hupoon.nvim',
	},
	{ 
		dir = '~/code/nvim-plugins-hc/lifetrak.nvim',
	},
})

