local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " " -- Make sure to set `mapleader` before lazy so your mappings are correct

require("lazy").setup({
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },

  {
    "nvim-neo-tree/neo-tree.nvim",
      branch = "v2.x",
      dependencies = { 
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim",
      }
    },

  -- +------------+
  -- | treesitter |
  -- +------------+
  {
      'nvim-treesitter/nvim-treesitter',
      build = ':TSUpdate',
  },

  'nvim-treesitter/playground',
  'p00f/nvim-ts-rainbow',

  {
	 "williamboman/mason.nvim",
 	 "williamboman/mason-lspconfig.nvim",
  	 "neovim/nvim-lspconfig",
  },
	
    {
	  "folke/which-key.nvim",
	  event = "VeryLazy",
	  init = function()
	    vim.o.timeout = true
	    vim.o.timeoutlen = 300
	  end,
	  opts = {
	    -- your configuration comes here
	    -- or leave it empty to use the default settings
	    -- refer to the configuration section below
	}
   },

})

