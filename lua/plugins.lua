local M = {}

function M.setup()
  -- Indicate first time installation
  local packer_bootstrap = false

  -- packer.nvim configuration
  local conf = {
    display = {
      open_fn = function()
        return require("packer.util").float { border = "rounded" }
      end,
    },
  }

  -- Check if packer.nvim is installed
  -- Run PackerCompile if there are changes in this file
  local function packer_init()
    local fn = vim.fn
    local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
    if fn.empty(fn.glob(install_path)) > 0 then
      packer_bootstrap = fn.system {
        "git",
        "clone",
        "--depth",
        "1",
        "https://github.com/wbthomason/packer.nvim",
        install_path,
      }
      vim.cmd [[packadd packer.nvim]]
    end
    vim.cmd "autocmd BufWritePost plugins.lua source <afile> | PackerCompile"
  end

  -- Plugins
  local function plugins(use)
    use { "wbthomason/packer.nvim" }

    -- Navigation
    use { "nvim-lua/plenary.nvim" }
    use { "nvim-telescope/telescope.nvim", tag = "0.1.0" }
    use { "nvim-telescope/telescope-fzf-native.nvim" }
    use { "nvim-telescope/telescope-media-files.nvim" }
    use { "nvim-telescope/telescope-file-browser.nvim" }
    use { "BurntSushi/ripgrep" }
    use { "sharkdp/fd" }
    use { "nvim-lua/popup.nvim" }
    use { "kevinhwang91/rnvimr" }
    use { "psaikido/harpoon" }

    -- LSP - Treesitter
    use { "nvim-treesitter/nvim-treesitter" }
    use {
        'VonHeikemen/lsp-zero.nvim',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'saadparwaiz1/cmp_luasnip'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-nvim-lua'},

            -- Snippets
            {'L3MON4D3/LuaSnip'},
            {'rafamadriz/friendly-snippets'},
        }
    }

    -- Helpers
    use { "tpope/vim-fugitive" }
    use { "tpope/vim-commentary" }
    use { "brett-griffin/phpdocblocks.vim" }
    use { "mhinz/vim-startify" }
    use { "mattn/emmet-vim" }
    use { "folke/which-key.nvim" }
    use { "christoomey/vim-tmux-navigator" }
    use { "vim-vdebug/vdebug" }
    use { "jreybert/vim-largefile" }
    use { "vimwiki/vimwiki" }

    -- Themes
    use { "iCyMind/NeoSolarized" }
    use { "EdenEast/nightfox.nvim" }
    use { "morhetz/gruvbox" }
    use { "dracula/vim" }
    use { "vim-airline/vim-airline" }
    use { "vim-airline/vim-airline-themes" }
    use { "norcalli/nvim-colorizer.lua" }

    -- HC
    use { "~/code/nvim-plugins-hc/lifetrak.nvim" }
    use { "~/code/nvim-plugins-hc/hupoon.nvim" }

    if packer_bootstrap then
      print "Restart Neovim required after installation!"
      require("packer").sync()
    end
  end

  packer_init()

  local packer = require "packer"
  packer.init(conf)
  packer.startup(plugins)
end

return M
