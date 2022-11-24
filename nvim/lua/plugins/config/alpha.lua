local alpha = require('alpha')
local db = require('alpha.themes.dashboard')

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
  db.button('fn', '  > New File' , '<cmd>ene <BAR> startinsert <CR>'),
  db.button('ff', '  > Find File', '<cmd>Telescope find_files<CR>'),
  db.button('fg', '  > Find Text', '<cmd>Telescope live_grep<CR>'),
  db.button('r', '  > Recent' , '<cmd>Telescope oldfiles<CR>'),
  -- db.button('fm', '  > Bookmarks'),
  db.button('s', '  > Settings' , '<cmd>e ~/.config/nvim/init.lua | Neotree toggle<CR>'),
}

local function footer()
    local total_plugins = #vim.tbl_keys(packer_plugins)
    local version = vim.version()
    local nvim_version_info = '   v' .. version.major .. '.' .. version.minor .. '.' .. version.patch

    return ' ' .. total_plugins .. ' plugins' .. nvim_version_info
end

db.section.footer.val = { '', footer() }

alpha.setup(db.opts)
