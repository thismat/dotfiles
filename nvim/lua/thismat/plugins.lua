-- Current Plugin Manager: Packer

local WINDOWS = vim.fn.has('win64') or vim.fn.has('win32')

local packer_bootstrap = require('thismat.bootstrap').ensure_packer();

return require('packer').startup(function(use)
  -- Packer
  use 'wbthomason/packer.nvim'

  -- Treesitter
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  -- Colorschemes
  use 'folke/tokyonight.nvim'

  -- LSP Config
  use 'neovim/nvim-lspconfig'

  -- LSP Completion
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'

  -- Better annotations for the LSP window
  use 'onsails/lspkind.nvim'

  -- Snipping
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/vim-vsnip'

  -- devicons
  use 'kyazdani42/nvim-web-devicons'

  -- filebrowser
  use 'kyazdani42/nvim-tree.lua'

  if packer_bootstrap then
          require('packer').sync()
  end

end)


