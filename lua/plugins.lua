local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function(use)
    use({"wbthomason/packer.nvim"})
    use({"vim-airline/vim-airline"})
    use({"vim-airline/vim-airline-themes"})
    use({"tpope/vim-fugitive"})
    use({"junegunn/fzf"})
    use({"junegunn/fzf.vim"})
    use({"morhetz/gruvbox"})
    use({"~/code/lifetrak/lifetrak-vim"})
    use({"iamcco/markdown-preview.nvim"})
    use({"iCyMind/NeoSolarized"})
    use({"scrooloose/nerdtree"})
    use({"norcalli/nvim-colorizer.lua"})
    use({"joonty/vdebug"})
    use({"jreybert/vim-largefile"})
    use({"folke/which-key.nvim"})

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)

-- HC
vim.g.mapleader = ';'

-- General Usage
vim.api.nvim_set_keymap("n", "<C-s>", ":w<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-c>", ":q<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<Esc>", ":nohlsearch<CR>", { noremap = true })
vim.api.nvim_set_keymap("i", "kj", "<Esc>", { noremap = true, silent = true })

-- Airline
vim.g.airline_theme = 'solarized'
vim.g.airline_solarized_bg = 'dark'

-- fugitive - invoke git status
vim.api.nvim_set_keymap("n", "<Leader>g", ":Git<CR>", { noremap = true, silent = true })

-- FuzzyFinder FZF
-- Requires Ag (silver) installing from the SilverSearcher
-- :help fzf-vim
-- Use ;a to search in whatever dir the current working directory is in.
-- Use ;* for the same but look for the word under the cursor.
-- Use ;ah to search from the home directory.
-- Because I've put a .gitignore in $HOME it controls what dirs get looked at.
vim.api.nvim_set_keymap("n", "<Leader>a", ":Ag<CR>", { noremap = true, silent = true })

-- Lifetrak
vim.g.lifetrak_metas = {'energy', 'pain', 'mood', 'sleep'}

-- Markdown preview
vim.api.nvim_set_keymap("n", "<Leader>mkp", ":MarkdownPreview<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>mks", ":MarkdownPreviewStop<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>mkt", ":MarkdownPreviewToggle<CR>", { noremap = true, silent = true })

-- NeoSolarized
vim.cmd('colorscheme NeoSolarized')
vim.cmd('set background=dark')

-- NERDTree
vim.api.nvim_set_keymap("n", "<leader>e", ":NERDTree<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>s", ":NERDTreeFind<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>b", ":Bookmark<CR>", { noremap = true, silent = true })
vim.cmd('let NERDTreeShowBookmarks = 1')
vim.cmd('let NERDTreeMinimalUI = 1')

-- nvim-colorizer
require'colorizer'.setup()

-- Consider files of 10Mg and above as 'large'
vim.g.LargeFile = 1

-- which-key
require("which-key").setup {}
vim.cmd('set timeoutlen=500')

