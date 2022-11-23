local db = require('dashboard')

db.custom_header = {
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

-- astronvim.alpha_button('LDR f f', '  Find File  '),
-- astronvim.alpha_button('LDR f o', '  Recents  '),
-- astronvim.alpha_button('LDR f w', '  Find Word  '),
-- astronvim.alpha_button('LDR f n', '  New File  '),
-- astronvim.alpha_button('LDR f m', '  Bookmarks  '),
-- astronvim.alpha_button('LDR S l', '  Last Session  '),

db.custom_center = {
  {
    icon = '  ',
    desc = 'Find File          ',
    shortcut = 'f f',
    action = 'Telescope find_files'
  },
  {
    icon = '  ',
    desc = 'New File          ',
    shortcut = 'LDR f f',
    action = 'enew'
  },
}
