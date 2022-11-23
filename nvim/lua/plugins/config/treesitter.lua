local treesitter = require('nvim-treesitter.configs')

treesitter.setup {
  ensure_installed = {
    'bash',
    'c',
    'c_sharp',
    'cmake',
    'comment',
    'commonlisp',
    'cpp',
    'css',
    'cuda',
    'diff',
    'dockerfile',
    'gitattributes',
    'go',
    'gomod',
    'gowork',
    'graphql',
    'help',
    'hjson',
    'hlsl',
    'html',
    'http',
    'java',
    'javascript',
    'jsdoc',
    'json',
    'json5',
    'jsonc',
    'latex',
    'llvm',
    'lua',
    'make',
    'markdown',
    'markdown_inline',
    'ninja',
    'prisma',
    'pug',
    'python',
    'qmljs',
    'regex',
    'rust',
    'scss',
    'solidity',
    'sql',
    'svelte',
    'todotxt',
    'tsx',
    'typescript',
    'vim',
    'vue',
    'wgsl',
    'yaml',
  },

  auto_install = true,

  disable = function(lang, buf)
    local max_filesize = 100 * 1024 -- 100 KB
    local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
    if ok and stats and stats.size > max_filesize then
      return true
    end
  end,

  highlight = {
    enable = true
  },

  indent = {
    enable = true
  },

  autotag = {
    enable = true
  }
}
