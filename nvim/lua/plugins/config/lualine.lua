local lualine = require('lualine')
local navic = require('nvim-navic')

lualine.setup {
  options = {
    theme = 'auto'
  },
  winbar = {
    lualine_c = {
      { navic.get_location, cond = navic.is_available },
    }
  },
}
