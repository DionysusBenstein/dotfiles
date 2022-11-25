local mason_lspconfig = require('mason-lspconfig')
local bind = vim.keymap.set

local on_attach = function(client, bufnr)
  -- Enable completion triggered by <c-x><c-o>
  -- vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  --[[ if client.server_capabilities.documentSymbolProvider then
    local navic = require('nvim-navic')
    navic.attach(client, bufnr)
  end ]]

  -- Mappings.
  -- See `:help vim.lsp.*` for documentation on any of the below functions
  local bufopts = { noremap = true, silent = true, buffer = bufnr }
  require 'lsp_signature'.on_attach({}, bufnr)

  bind('n', 'gD', vim.lsp.buf.declaration, bufopts)
  bind('n', 'gd', vim.lsp.buf.definition, bufopts)
  bind('n', 'K', vim.lsp.buf.hover, bufopts)
  bind('n', 'gi', vim.lsp.buf.implementation, bufopts)
  bind('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
  bind('n', '<leader>wa', vim.lsp.buf.add_workspace_folder, bufopts)
  bind('n', '<leader>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
  bind('n', '<leader>wl', function()
    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
  end, bufopts)
  bind('n', '<leader>D', vim.lsp.buf.type_definition, bufopts)
  bind('n', '<leader>rn', vim.lsp.buf.rename, bufopts)
  bind('n', '<leader>ca', vim.lsp.buf.code_action, bufopts)
  bind('n', 'gr', vim.lsp.buf.references, bufopts)
  bind('n', '<leader>f', function() vim.lsp.buf.format { async = true } end, bufopts)
end

mason_lspconfig.setup {
  ensure_installed = {
    --[[ Language Servers ]]
    'tsserver',
    'sumneko_lua',
    'bashls',
    'jsonls',
    'yamlls',
    'html',
    'cssls',
  }
}

local capabilities = vim.lsp.protocol.make_client_capabilities()
local cmp_nvim_lsp_ok, cmp_nvim_lsp = pcall(require, 'cmp_nvim_lsp')

if cmp_nvim_lsp_ok then
  capabilities = cmp_nvim_lsp.default_capabilities(vim.lsp.protocol.make_client_capabilities())
end

mason_lspconfig.setup_handlers {
  function(server_name)
    require('lspconfig')[server_name].setup {
      on_attach = on_attach(),
      capabilities = capabilities
    }
  end
}
