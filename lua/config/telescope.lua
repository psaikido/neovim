local M = {}

function M.home_find()
  require('telescope.builtin').find_files {
      cwd = '~/'
  }
end

return M

