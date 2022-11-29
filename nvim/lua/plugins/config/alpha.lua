local alpha = require('alpha')
local db = require('alpha.themes.dashboard')
local icons = require('icons')

db.section.header.val = {
  '',
  '',
  '',
  '',
  ' ▄▄▄▄   ▓█████  ███▄    █   ██████ ▄▄▄█████▓▓█████  ██▓ ███▄    █ ',
  '▓█████▄ ▓█   ▀  ██ ▀█   █ ▒██    ▒ ▓  ██▒ ▓▒▓█   ▀ ▓██▒ ██ ▀█   █ ',
  '▒██▒ ▄██▒███   ▓██  ▀█ ██▒░ ▓██▄   ▒ ▓██░ ▒░▒███   ▒██▒▓██  ▀█ ██▒',
  '▒██░█▀  ▒▓█  ▄ ▓██▒  ▐▌██▒  ▒   ██▒░ ▓██▓ ░ ▒▓█  ▄ ░██░▓██▒  ▐▌██▒',
  '░▓█  ▀█▓░▒████▒▒██░   ▓██░▒██████▒▒  ▒██▒ ░ ░▒████▒░██░▒██░   ▓██░',
  '░▒▓███▀▒░░ ▒░ ░░ ▒░   ▒ ▒ ▒ ▒▓▒ ▒ ░  ▒ ░░   ░░ ▒░ ░░▓  ░ ▒░   ▒ ▒ ',
  '▒░▒   ░  ░ ░  ░░ ░░   ░ ▒░░ ░▒  ░ ░    ░     ░ ░  ░ ▒ ░░ ░░   ░ ▒░',
  ' ░    ░    ░      ░   ░ ░ ░  ░  ░    ░         ░    ▒ ░   ░   ░ ░ ',
  ' ░         ░  ░         ░       ░              ░  ░ ░           ░ ',
  '      ░                                                           ',
  '',
  '',
}

db.section.header.opts.hl = 'Identifier'

db.section.buttons.val = {
  db.button('fn', icons.ui.NewFile .. ' > New File' , '<cmd>ene <BAR> startinsert <CR>'),
  db.button('ff', icons.ui.FindFile .. ' > Find File', '<cmd>Telescope find_files<CR>'),
  db.button('fg', icons.ui.FIndText .. ' > Find Text', '<cmd>Telescope live_grep<CR>'),
  db.button('r', icons.ui.RecentFiles .. ' > Recent' , '<cmd>Telescope oldfiles<CR>'),
  -- db.button('fm', '  > Bookmarks'),
  db.button('s', icons.ui.Settings .. ' > Settings' , '<cmd>e ~/.config/nvim<CR>'),
}

local function footer()
    local total_plugins = #vim.tbl_keys(packer_plugins)
    local version = vim.version()
    local nvim_version_info =
      '  ' .. icons.ui.Version
      .. 'v' .. version.major
      .. '.' .. version.minor
      .. '.' .. version.patch

    return icons.ui.Plugins .. total_plugins .. ' plugins' .. nvim_version_info
end

db.section.footer.val = {
  '',
  footer()
}

alpha.setup(db.opts)
