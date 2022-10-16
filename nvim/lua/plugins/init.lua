require('plugins.disable_builtins')

local utils = require('plugins.utils')
local packer_bootstrap = utils.ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'folke/tokyonight.nvim'

  use {
    'folke/which-key.nvim',
    config = function()
      require('which-key').setup()
    end
  }

  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons',
    },
    config = function()
      require('plugins.config.nvim_tree')
    end
  }

  use {
    'nvim-lualine/lualine.nvim',
    config = function()
      require('plugins.config.lualine')
    end
  }

  use {
    'glepnir/dashboard-nvim',
    config = function()
      require('plugins.config.dashboard')
    end 
  }

  use {
    'windwp/nvim-autopairs',
    config = function()
      require('nvim-autopairs').setup()
    end
  }

  use {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end
  }

  use {
    'lukas-reineke/indent-blankline.nvim',
    config = function()
      require('plugins.config.indent_blankline')
    end
  }

  use {
    'akinsho/toggleterm.nvim',
    tag = '*',
    config = function()
      require('plugins.config.toggleterm')
    end
  }

  use {
      'lewis6991/gitsigns.nvim',
      config = function()
        require('gitsigns').setup()
      end
  }

  use {
    'nvim-treesitter/nvim-treesitter',
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
    config = function()
      require('plugins.config.treesitter')
    end
  }

  use 'nvim-treesitter/nvim-treesitter-context'

  use {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.0',
    requires = { 'nvim-lua/plenary.nvim' }
  }

  use 'ray-x/lsp_signature.nvim'

  use 'onsails/lspkind-nvim'
  
  use {
		'folke/trouble.nvim',
		requires = 'kyazdani42/nvim-web-devicons',
		config = function()
			require('trouble').setup()
		end,
	}

  use {
    'j-hui/fidget.nvim',
    config = function()
      require('fidget').setup()
    end
  }

  use {
    'kylechui/nvim-surround',
    config = function()
        require('nvim-surround').setup()
    end
  }

  use {
    'simrat39/symbols-outline.nvim',
    config = function()
      require('symbols-outline').setup()
    end
  }

  use {
    'hrsh7th/nvim-cmp',
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
    end
  }

  require('luasnip.loaders.from_vscode').lazy_load()

  use {
    'williamboman/mason.nvim',
    config = function()
      require('plugins.config.mason')
    end
  }

  use {
    'neovim/nvim-lspconfig',
    requires = {
      'williamboman/mason-lspconfig.nvim',
    },
    config = function()
      require('mason').setup()
      require('plugins.config.lsp')
    end
  }

  if packer_bootstrap then
    require('packer').sync()
  end
end)
