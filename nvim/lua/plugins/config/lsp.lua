local mason_lspconfig = require('mason-lspconfig')

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

-- local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

local capabilities = vim.lsp.protocol.make_client_capabilities()
local cmp_nvim_lsp_ok, cmp_nvim_lsp = pcall(require, 'cmp_nvim_lsp')

if cmp_nvim_lsp_ok then
  capabilities = cmp_nvim_lsp.default_capabilities(vim.lsp.protocol.make_client_capabilities())
end

mason_lspconfig.setup_handlers {
  function(server_name)
    require('lspconfig')[server_name].setup {
      on_attach = require('core.mappings').lsp_on_attach(),
      capabilities = capabilities
    }
  end
}
