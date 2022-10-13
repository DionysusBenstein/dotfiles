local M = {}
local builtin = require('telescope.builtin')
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

bind('v', '<Tab>', '<gv', opts)
bind('v', '<Tab>', '>gv', opts)

bind('i', 'jk', '<ESC>', opts)
bind('n', '<leader><leader>', ':NvimTreeToggle<CR>', opts)

bind('n', '<leader>t', ':ToggleTerm<CR>', opts)
bind('t', '<leader>t', ':ToggleTerm<CR>', opts)
bind('t', '<esc>', [[<C-\><C-n>]], opts)
bind('t', 'jk', [[<C-\><C-n>]], opts)
bind('t', '<C-h>', '<cmd>wincmd h<CR>', opts)
bind('t', '<C-j>', '<cmd>wincmd j<CR>', opts)
bind('t', '<C-k>', '<cmd>wincmd k<CR>', opts)
bind('t', '<C-l>', '<cmd>wincmd l<CR>', opts)

-- telescope
bind('n', 'ff', builtin.find_files, opts)
bind('n', 'fg', builtin.live_grep, opts)
bind('n', 'fb', builtin.buffers, opts) 
bind('n', 'fh', builtin.help_tags, opts)

-- moving between visible buffers 
bind("n", "<C-l>", "<C-w>l", opts)
bind("n", "<C-h>", "<C-w>h", opts)
bind("n", "<C-j>", "<C-w>j", opts)
bind("n", "<C-k>", "<C-w>k", opts)

-- LSP
bind('n', '<space>e', vim.diagnostic.open_float, opts)
bind('n', '[d', vim.diagnostic.goto_prev, opts)
bind('n', ']d', vim.diagnostic.goto_next, opts)
bind('n', '<space>q', vim.diagnostic.setloclist, opts)

M.lsp_on_attach = function(client, bufnr)
  -- Enable completion triggered by <c-x><c-o>
  -- vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  -- See `:help vim.lsp.*` for documentation on any of the below functions
  local bufopts = { noremap = true, silent = true, buffer = bufnr }

  bind('n', 'gD', vim.lsp.buf.declaration, bufopts)
  bind('n', 'gd', vim.lsp.buf.definition, bufopts)
  bind('n', 'K', vim.lsp.buf.hover, bufopts)
  bind('n', 'gi', vim.lsp.buf.implementation, bufopts)
  bind('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
  bind('n', '<space>wa', vim.lsp.buf.add_workspace_folder, bufopts)
  bind('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
  bind('n', '<space>wl', function()
    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
  end, bufopts)
  bind('n', '<space>D', vim.lsp.buf.type_definition, bufopts)
  bind('n', '<space>rn', vim.lsp.buf.rename, bufopts)
  bind('n', '<space>ca', vim.lsp.buf.code_action, bufopts)
  bind('n', 'gr', vim.lsp.buf.references, bufopts)
  bind('n', '<space>f', function() vim.lsp.buf.format { async = true } end, bufopts)
end

return M
