-- Current Plugin Manager: Packer

local WINDOWS = vim.fn.has('win64') or vim.fn.has('win32')

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
  use 'hrsh7th/nvim-cmp'

  -- Better annotations for the LSP window
  use 'onsails/lspkind.nvim'

  -- Snipping
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/vim-vsnip'

  -- Platform specific plugins
  if WINDOWS then
        -- tabnine windows
 	use {'tzachar/cmp-tabnine', after = "nvim-cmp", run='powershell ./install.ps1', requires = 'hrsh7th/nvim-cmp'}
  else
        -- tabnine linux
 	use {'tzachar/cmp-tabnine', run='./install.sh', requires = 'hrsh7th/nvim-cmp'}
  end
end)
