-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use { "nvim-lua/plenary.nvim" }
  use {
	  'nvim-telescope/telescope.nvim', tag = 'v0.2.0',
	  dependencies = { 'nvim-lua/plenary.nvim' }
  }
  use ({ "catppuccin/nvim", as = "catppuccin"
})
use('nvim-treesitter/nvim-treesitter', {run = ":TSUpdate"})
use("ThePrimeagen/harpoon")
use("mbbill/undotree")
use("tpope/vim-fugitive")
use("neovim/nvim-lspconfig")
end)
