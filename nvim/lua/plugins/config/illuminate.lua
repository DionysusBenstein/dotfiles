local illuminate = require('illuminate')

illuminate.configure {
  delay = 300,
  under_cursor = true,

  providers = {
    'lsp',
    'treesitter',
    'regex',
  },

  filetypes_denylist = {
    'dirvish',
    'fugitive',
    'dirvish',
    'fugitive',
    'alpha',
    'NvimTree',
    'neo-tree',
    'packer',
    'neogitstatus',
    'Trouble',
    'lir',
    'Outline',
    'spectre_panel',
    'toggleterm',
    'DressingSelect',
    'TelescopePrompt',
  },
}
