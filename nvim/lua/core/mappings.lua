local bind = vim.keymap.set
local opts = { silent = true, noremap = true }

-- Modes
-- normal_mode = 'n'
-- insert_mode = 'i'
-- visual_mode = 'v'
-- visual_block_mode = 'x'
-- term_mode = 't'
-- command_mode = 'c'

-- Stay in indent mode
bind('v', '<Backspace>', '<gv', opts)
bind('v', '<Tab>', '>gv', opts)

bind('i', 'jk', '<ESC>', opts)
bind('n', '<space>h', '<cmd>noh<cr>', opts)
bind('n', '<leader>e', '<cmd>Neotree toggle<CR>', opts)

bind('t', '<esc>', [[<C-\><C-n>]], opts)
bind('t', 'jk', [[<C-\><C-n>]], opts)
bind('t', '<C-h>', '<cmd>wincmd h<CR>', opts)
bind('t', '<C-j>', '<cmd>wincmd j<CR>', opts)
bind('t', '<C-k>', '<cmd>wincmd k<CR>', opts)
bind('t', '<C-l>', '<cmd>wincmd l<CR>', opts)

bind('n', '<leader>fn' , '<cmd>enew<cr>', opts)

-- moving between visible buffers 
bind('n', '<C-h>', require('smart-splits').move_cursor_left, opts)
bind('n', '<C-j>', require('smart-splits').move_cursor_down, opts)
bind('n', '<C-k>', require('smart-splits').move_cursor_up, opts)
bind('n', '<C-l>', require('smart-splits').move_cursor_right, opts)

-- LSP
bind('n', '<leader>ld', vim.diagnostic.open_float, opts)
bind('n', '[d', vim.diagnostic.goto_prev, opts)
bind('n', ']d', vim.diagnostic.goto_next, opts)
bind('n', '<leader>q', vim.diagnostic.setloclist, opts)

-- terminal
bind('n', '<leader>t', '<cmd>ToggleTerm<CR>', opts)
bind('t', '<leader>t', '<cmd>ToggleTerm<CR>', opts)

-- luasnip
bind('i', '<C-j>', '<cmd>lua require("luasnip").jump(1)<CR>', opts)
bind('s', '<C-j>', '<cmd>lua require("luasnip").jump(1)<CR>', opts)
bind('i', '<C-k>', '<cmd>lua require("luasnip").jump(-1)<CR>', opts)
bind('s', '<C-k>', '<cmd>lua require("luasnip").jump(-1)<CR>', opts)

-- telescope
bind('n', 'ff', '<cmd>Telescope find_files<CR>', opts)
bind('n', 'fg', '<cmd>Telescope live_grep<CR>', opts)
bind('n', 'fb', '<cmd>Telescope buffers<CR>', opts)
bind('n', 'fh', '<cmd>Telescope help_tags<CR>', opts)

-- trouble
bind('n', '<leader>x', '<cmd>TroubleToggle<CR>', opts)
bind('n','gr', '<cmd>Trouble lsp_references<CR>', opts)

-- symbols-outline
bind('n', '<leader>s', ':SymbolsOutline<CR>', opts)

-- gitsigns
bind('n', '<leader>gj', require('gitsigns').next_hunk, opts)
bind('n', '<leader>gk', require('gitsigns').prev_hunk, opts)
bind('n', '<leader>gl', require('gitsigns').blame_line, opts)
bind('n', '<leader>gp', require('gitsigns').preview_hunk, opts)
bind('n', '<leader>gh', require('gitsigns').reset_hunk, opts)
bind('n', '<leader>gr', require('gitsigns').reset_buffer, opts)
bind('n', '<leader>gs', require('gitsigns').stage_hunk, opts)
bind('n', '<leader>gu', require('gitsigns').undo_stage_hunk, opts)
bind('n', '<leader>gd', require('gitsigns').diffthis, opts)
