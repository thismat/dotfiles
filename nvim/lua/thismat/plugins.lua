-- Current Plugin Manager: Packer

return require('packer').startup(function()
  -- Packer
  use 'wbthomason/packer.nvim'

  -- Treesitter
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  -- Colorschemes
  use { 'folke/tokyonight.nvim' }

  -- LSP Config
  use { 'neovim/nvim-lspconfig' }
end)
