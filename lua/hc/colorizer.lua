-- Colorizer
-- https://github.com/norcalli/nvim-colorizer.lua
require 'colorizer'.setup {
  '*'; -- Highlight all files, but customize some others.
  css = { rgb_fn = true; }; -- Enable parsing rgb(...) functions in css.
  scss = { rgb_fn = true; RRGGBBAA = true;};
  html = { names = false; }; -- Disable parsing "names" like Blue or Gray
}
