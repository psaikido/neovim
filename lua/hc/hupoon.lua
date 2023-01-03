local M = {}

function M.setup()
  require('hupoon').setup(
    {
      selected_dirs = {
        '~/.config',
        '~/.local/share/nvim/site/pack/packer/start/',
        '~/Documents/auth/stage1',
        '~/Documents/auth/submissions',
        '~/bin',
        '~/code/nvim-plugins-hc',
        '~/dotfiles',
        '~/rchamp',
        '~/sites/chanadmin',
        '~/sites/hugle.uk',
      }
    }
  )
end

return M

