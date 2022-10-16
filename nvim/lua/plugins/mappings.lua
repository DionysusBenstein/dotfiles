local builtin = require('telescope.builtin')

local bind = vim.keymap.set
local opts = { silent = true, noremap = true }

-- nvim-tree
bind('n', '<leader>t', ':ToggleTerm<CR>', opts)
bind('t', '<leader>t', ':ToggleTerm<CR>', opts)

-- luasnip
bind('i', '<C-j>', '<cmd>lua require("luasnip").jump(1)<CR>', opts)
bind('s', '<C-j>', '<cmd>lua require("luasnip").jump(1)<CR>', opts)
bind('i', '<C-k>', '<cmd>lua require("luasnip").jump(-1)<CR>', opts)
bind('s', '<C-k>', '<cmd>lua require("luasnip").jump(-1)<CR>', opts)

-- telescope
bind('n', 'ff', builtin.find_files, opts)
bind('n', 'fg', builtin.live_grep, opts)
bind('n', 'fb', builtin.buffers, opts) 
bind('n', 'fh', builtin.help_tags, opts)

-- trouble
bind('n', '<leader>x', '<cmd>TroubleToggle<CR>', opts)
bind('n','gr', '<cmd>Trouble lsp_references<CR>', opts)

-- symbols-outline
bind('n', '<leader>s', ':SymbolsOutline<CR>', opts)
