local plugin_list = {
  ['wbthomason/packer.nvim'] = {},

  ['folke/tokyonight.nvim'] = {},

  ['kyazdani42/nvim-web-devicons'] = {},

  ['nvim-lua/plenary.nvim'] = {},

  ['folke/which-key.nvim'] = {
    config = function()
      require('which-key').setup()
    end
  },

  ['nvim-lualine/lualine.nvim'] = {
    config = function()
      require('plugins.config.lualine')
    end
  },

  ['nvim-neo-tree/neo-tree.nvim'] = {
    branch = 'v2.x',
    requires = {
      'MunifTanjim/nui.nvim',
    },
    config = function()
        require('plugins.config.neo-tree')
      end
  },

  ['glepnir/dashboard-nvim'] = {
    config = function()
      require('plugins.config.dashboard')
    end
  },

  ['windwp/nvim-autopairs'] = {
    config = function()
      require('nvim-autopairs').setup()
    end
  },

  ['numToStr/Comment.nvim'] = {
    config = function()
      require('Comment').setup()
    end
  },

  ['lukas-reineke/indent-blankline.nvim'] = {
    config = function()
      require('plugins.config.indent_blankline')
    end
  },

  ['akinsho/toggleterm.nvim'] = {
    config = function()
      require('plugins.config.toggleterm')
    end
  },

  ['lewis6991/gitsigns.nvim'] = {
    config = function()
      require('gitsigns').setup()
    end
  },

  ['nvim-treesitter/nvim-treesitter'] = {
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
    config = function()
      require('plugins.config.treesitter')
    end
  },

  ['nvim-telescope/telescope.nvim'] = {
    tag = '0.1.0',
    requires = { 'nvim-lua/plenary.nvim' }
  },

  ['ray-x/lsp_signature.nvim'] = {
    config = function()
      require('lsp_signature').setup()
    end
  },

  ['onsails/lspkind-nvim'] = {},

  ['folke/trouble.nvim'] = {
    requires = 'kyazdani42/nvim-web-devicons',
    config = function()
      require('trouble').setup()
    end,
  },

  ['j-hui/fidget.nvim'] = {
    config = function()
      require('fidget').setup()
    end
  },

  ['kylechui/nvim-surround'] = {
    config = function()
        require('nvim-surround').setup()
    end
  },

  ['simrat39/symbols-outline.nvim'] = {
    config = function()
      require('symbols-outline').setup()
    end
  },

  ['RRethy/vim-illuminate'] = {
    config = function()
      require('plugins.config.illuminate')
    end
  },

  ['SmiteshP/nvim-navic'] = {
    requires = 'neovim/nvim-lspconfig',
    config = function()
      require('nvim-navic').setup()
      -- vim.opt.winbar = "%{%v:lua.require'nvim-navic'.get_location()%}"
    end
  },

  ['hrsh7th/nvim-cmp'] = {
    requires = {
      'L3MON4D3/LuaSnip',
      'saadparwaiz1/cmp_luasnip',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-cmdline',
      'rafamadriz/friendly-snippets',
    },
    config = function()
      require('plugins.config.cmp')
      require('luasnip.loaders.from_vscode').lazy_load()
    end
  },

  ['williamboman/mason.nvim'] = {
    config = function()
      require('plugins.config.mason')
    end
  },

  ['neovim/nvim-lspconfig'] = {
    requires = {
      'williamboman/mason-lspconfig.nvim',
    },
    config = function()
      require('mason').setup()
      require('plugins.config.lsp')
    end
  },
}

return plugin_list
