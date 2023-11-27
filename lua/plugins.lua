return {
  ----------------------------------------------------------------------
  -- telescope ------------------------------
  {'nvim-telescope/telescope.nvim',
    tag = '0.1.4',
    dependencies = {'nvim-lua/plenary.nvim'},
    config = function()
    require('config_plugins/telescope_config')
    end,
  },

  -- auto save ------------------------------
  {'pocco81/auto-save.nvim',
    config = function()
    require('config_plugins/autosave_config')
    end,
  },
  -- original -------------------------------
  "nvim-lua/popup.nvim", --An implementation of the Popup API from vim in Neovim
  "nvim-lua/plenary.nvim", -- Useful lua functions used losts of plugins

  -- markdown-preview -----------------------
  -- for MacOS, it need 'brew install node; brew install yarn'
  {
    "iamcco/markdown-preview.nvim",
    run = function() 
	vim.fn["mkdp#util#install"]() 
    end,
    config = function()
	require('config_plugins/mdp_config')
    end,
  },

  -- latex plugins --------------------------
  { 'lervag/vimtex', 
    config = function()
	require('config_plugins/vimtex_config')
    end,
  },
   
  -- color schemes --------------------------
  {'Mofiqul/dracula.nvim',
    config = function()
	require('config_plugins/dracula_config')
    end,
  },

  -- lualine
  {'nvim-lualine/lualine.nvim',
    dependencies = {'nvim-tree/nvim-web-devicons',},
    config = function()
	require('config_plugins/lualine_config')
    end,
  },
  -- cmp plugins
  --  {"hrsh7th/nvim-cmp", opts='config/cmp_path_config'}, -- The completion plugin
  -- "hrsh7th/cmp-buffer", -- Buffer completions
  -- "hrsh7th/cmp-path", -- Path completions
  -- "hrsh7th/cmp-cmdline", -- Cmdline completions
  -- "saadparwaiz1/cmp_luasnip", -- Snippet completions

  -- "L3MON4D3/LuaSnip", -- snippet engine
  -- "rafamadriz/friendly-snippets", -- a bunch of snippets to use

  -- lsp related ----------------------------
  {'williamboman/mason.nvim',
    config = function()
	require('config_plugins/mason_config')
    end,
  },
  -- to use pyright, npm is needed
  {'neoclide/npm.nvim'},
  -- conquer of completion for using vimtex
  -- use {'neoclide/coc.nvim', branch = 'release'}

  -- python-lsp
  -- helps with using the lsp feature or python development
  -- use 'neovim/nvim-lspconfig'
  -- use {'HallerPatrick/py_lsp.nvim'}
  --
  -- code runner
  -- use { 'CRAG666/code_runner.nvim', requires = 'nvim-lua/plenary.nvim', config = get_config('coderunnerconfig') }
}
