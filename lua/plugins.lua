local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function(use)
    use {"wbthomason/packer.nvim"}
    use {"vim-airline/vim-airline"}
    use {"vim-airline/vim-airline-themes"}
    use {"tpope/vim-fugitive"}
    use {"junegunn/fzf"}
    use {"junegunn/fzf.vim"}
    use {"morhetz/gruvbox"}
    use {"~/code/lifetrak/lifetrak-vim"}
    use {"iamcco/markdown-preview.nvim"}
    use {"iCyMind/NeoSolarized"}
    use {"scrooloose/nerdtree"}
    use {"norcalli/nvim-colorizer.lua"}
    use {"joonty/vdebug"}
    use {"jreybert/vim-largefile"}
    use {'vimwiki/vimwiki'}
    use {"folke/which-key.nvim"}

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)

