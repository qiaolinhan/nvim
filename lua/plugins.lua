return {
  ----------------------------------------------------------------------
  -- nvim header
  {'alpertuna/vim-header',
    config = function()
	require('z_configs/functions/header_config')
    end,
  },
  --
  --
  -- nvim-comment
  {'terrortylor/nvim-comment',
    config = function()
	require('z_configs/functions/comment_config')
    end,
  },

  -- telescope ------------------------------
  {'nvim-telescope/telescope.nvim',
    tag = '0.1.4',
    dependencies = {'nvim-lua/plenary.nvim'},
    config = function()
    require('z_configs/functions/telescope_config')
    end,
  },

  -- auto save ------------------------------
  {'pocco81/auto-save.nvim',
    config = function()
    require('z_configs/functions/autosave_config')
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
	require('z_configs/text/mdp_config')
    end,
  },

  -- latex plugins --------------------------
  { 'lervag/vimtex', 
    config = function()
	require('z_configs/text/vimtex_config')
    end,
  },
   
  -- color schemes --------------------------
  {'Mofiqul/dracula.nvim',
    config = function()
	require('z_configs/dracula_config')
    end,
  },
  -- -- Configure LazyVim to load dracula
  -- {'LazyVim/LazyVim',
  --   opts = {
  --   colorscheme = "dracula",
  --   },
  -- },

  -- lualine
  {'nvim-lualine/lualine.nvim',
    dependencies = {'nvim-tree/nvim-web-devicons',},
    config = function()
	require('z_configs/functions/lualine_config')
    end,
  },


  -- language server protocol (lsp) related ----------------------------
  {'williamboman/mason.nvim',
   'williamboman/mason-lspconfig.nvim',
   'neovim/nvim-lspconfig',
    config = function()
	require('z_configs/mason/mason_config')
    end,
  },

  -- rust-tools
  {'simrat39/rust-tools.nvim',
   'nvim-lua/plenary.nvim',
   'mfussenegger/nvim-dap',
   config = function()
       require('z_config/mason/rust_config')
       end,
  },

	--   -- cmp plugins
	--   "hrsh7th/nvim-cmp", 
	--   -- The completion plugin
	--   "hrsh7th/cmp-buffer", -- Buffer completions
	--   -- path completion
	--   {"hrsh7th/cmp-path",
	--      config = function()
	-- require('z_configs/mason/cmp_path_config')
	--     end,
	--   },
	--
	--   "hrsh7th/cmp-cmdline", -- Cmdline completions
	--   "saadparwaiz1/cmp_luasnip", -- Snippet completions
	--
	--   "L3MON4D3/LuaSnip", -- snippet engine
	--   "rafamadriz/friendly-snippets", -- a bunch of snippets to use

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
