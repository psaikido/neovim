local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function(use)
    use {'wbthomason/packer.nvim'}

    -- Themes
    use {'norcalli/nvim-colorizer.lua'}
    use {'iCyMind/NeoSolarized'}
    use {'EdenEast/nightfox.nvim'}
    use {'morhetz/gruvbox'}
    use {'vim-airline/vim-airline'}
    use {'vim-airline/vim-airline-themes'}


    -- LSP and autocompletions
    use {'neovim/nvim-lspconfig'}
    use {'hrsh7th/nvim-cmp'}
    use {'hrsh7th/cmp-nvim-lsp'}
    use {'saadparwaiz1/cmp_luasnip'}
    use {'L3MON4D3/LuaSnip'}


    -- Helpers
    use {'tpope/vim-fugitive'}

    use {
        'iamcco/markdown-preview.nvim',
        config = "vim.call('mkdp#util#install')"
    }

    use {'scrooloose/nerdtree'}
    use {"junegunn/fzf"}
    use {"junegunn/fzf.vim"}
    use {'folke/which-key.nvim'}

    --use {'joonty/vdebug'}
    use {'jreybert/vim-largefile'}
    use {'vimwiki/vimwiki'}

    -- HC
    use {'~/code/lifetrak/lifetrak-vim'}

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)

