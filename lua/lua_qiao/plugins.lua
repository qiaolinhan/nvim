
local function get_config(name)
    return string.format('require(\'config/%s\')', name)
end


local fn = vim.fn

-- Automatically install packer
-- The packages are at "~/.local/share/nvim/site ..."
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  packer_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.vim",
    install_path,
  }
  print "Installing packer close and reopen Neovim ..."
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we do not error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

-- Install the plugins
return packer.startup(function(use)
  ----------------------------------------------------------------------
  use "wbthomason/packer.nvim" --Have packer manage itself
  use "nvim-lua/popup.nvim" --An implementation of the Popup API from vim in Neovim
  use "nvim-lua/plenary.nvim" -- Useful lua functions used losts of plugins

  -- markdown-preview
  -- for MacOS, it need 'brew install node; brew install yarn'
  use ({
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
  })

  -- themes/schemes
  -- dracula
  use {'dracula/vim', as = 'dracula'}
  use {"olimorris/onedarkpro.nvim", as = 'onedark'} 
  use{'joshdick/onedark.vim'}

  -- cmp plugins
  use "hrsh7th/nvim-cmp" -- The completion plugin
  use "hrsh7th/cmp-buffer" -- Buffer completions
  use "hrsh7th/cmp-path" -- Path completions
  use "hrsh7th/cmp-cmdline" -- Cmdline completions
  use "saadparwaiz1/cmp_luasnip" -- Snippet completions

  use "L3MON4D3/LuaSnip" -- snippet engine
  use "rafamadriz/friendly-snippets" -- a bunch of snippets to use

  -- latex plugins
  use { 'lervag/vimtex', config = get_config('vimtexconfig')}
  -- conquer of completion for using vimtex
  -- use {'neoclide/coc.nvim', branch = 'release'}

  -- python-lsp
  -- helps with using the lsp feature or python development
  -- use 'neovim/nvim-lspconfig'
  -- use {'HallerPatrick/py_lsp.nvim'}
  --
  -- code runner
  use { 'CRAG666/code_runner.nvim', requires = 'nvim-lua/plenary.nvim', config = get_config('coderunnerconfig') }




  -- -------------------------------------------------------------------
  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end
)
