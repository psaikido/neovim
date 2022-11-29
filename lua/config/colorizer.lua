local M = {}

function M.setup()
  require('colorizer').setup {
    'css';
    'scss';

    css = { 
      rgb_fn = true; 
      hsl_fn = true;
    };

    html = { names = false; }
  }
end

return M

