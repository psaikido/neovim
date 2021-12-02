local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function(use)
    use {'wbthomason/packer.nvim'}
    use {'vim-airline/vim-airline'}
    use {'vim-airline/vim-airline-themes'}

    use {'norcalli/nvim-colorizer.lua'}

    use {'tpope/vim-fugitive'}

    use {'morhetz/gruvbox'}

    use {'~/code/lifetrak/lifetrak-vim'}

    use {
        'iamcco/markdown-preview.nvim',
        config = "vim.call('mkdp#util#install')"
    }

    use {'iCyMind/NeoSolarized'}
    use {'EdenEast/nightfox.nvim'}

    use {'scrooloose/nerdtree'}

    use {
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use {'nvim-telescope/telescope-fzf-native.nvim'}

    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

    --use {'joonty/vdebug'}
    use {'jreybert/vim-largefile'}
    use {'vimwiki/vimwiki'}
    use {'folke/which-key.nvim'}

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)

