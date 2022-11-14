local cmp = require('cmp')
local lspkind = require('lspkind')

cmp.setup({
  formatting = {
    format = lspkind.cmp_format {
      mode = 'symbol',
      maxwidth = 50,
      ellipsis_char = '...',
    }
  },

  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },

  mapping = cmp.mapping.preset.insert({
    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
    ['<Tab>'] = cmp.mapping.confirm({ select = true }),
  }),

  sources = cmp.config.sources({
   { name = 'nvim_lsp' },
   { name = 'nvim_lsp_signature_help' },
   { name = 'path' },
   { name = 'buffer' },
   { name = 'luasnip' },
   { name = 'nvim_lua' },
  })
 })

 -- Set configuration for specific filetype.
 --[[ cmp.setup.filetype('gitcommit', {
   sources = cmp.config.sources({
     { name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it.
   }, {
     { name = 'buffer' },
   })
 }) ]]

 cmp.setup.cmdline({ '/', '?' }, {
   mapping = cmp.mapping.preset.cmdline(),
   sources = {
     { name = 'buffer' }
   }
 })

 cmp.setup.cmdline(':', {
   mapping = cmp.mapping.preset.cmdline(),
   sources = cmp.config.sources({
     { name = 'path' },
     { name = 'cmdline' }
   })
 })
