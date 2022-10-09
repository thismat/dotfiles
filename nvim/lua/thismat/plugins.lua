-- List of plugins and configuration

-- If windows specific setup is needed
local WINDOWS = vim.fn.has('win64') or vim.fn.has('win32')

local plugins = {
  -- Packer
  {
    'wbthomason/packer.nvim'
  },

  -- Treesitter
  {
    'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'
  },

  -- Colorschemes
  {
    'folke/tokyonight.nvim'
  },

  -- LSP and Completion
  {
    'neovim/nvim-lspconfig'
  },
  {
    'hrsh7th/cmp-nvim-lsp'
  },
  {
    'hrsh7th/cmp-buffer'
  },
  {
    'hrsh7th/cmp-path'
  },
  {
    'hrsh7th/cmp-cmdline'
  },
  {
    'hrsh7th/nvim-cmp'
  },
  {
    'onsails/lspkind.nvim'
  },

  -- Snippets
  {
    'hrsh7th/cmp-vsnip'
  },
  {
    'hrsh7th/vim-vsnip'
  },

  -- Icons
  {
    'kyazdani42/nvim-web-devicons'
  },

  -- File browser
  {
    'kyazdani42/nvim-tree.lua',
    config = function()
      require('nvim-tree').setup()
    end
  },

  -- JSON Schema Store
  {
    'b0o/schemastore.nvim',
    config = function ()
      require('schemastore').setup()
    end
  },
}

return plugins
