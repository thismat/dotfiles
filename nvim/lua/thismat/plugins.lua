-- List of plugins and configuration

-- If windows specific setup is needed
local WINDOWS = vim.fn.has("win64") or vim.fn.has("win32")

local plugins = {
  -- Packer
  {
    "wbthomason/packer.nvim"
  },

  -- Treesitter
  {
    "nvim-treesitter/nvim-treesitter", run = ":TSUpdate"
  },

  -- Colorschemes
  {
    "folke/tokyonight.nvim"
  },

  -- LSP and Completion
  {
    "neovim/nvim-lspconfig"
  },
  {
    "hrsh7th/cmp-nvim-lsp"
  },
  {
    "hrsh7th/cmp-buffer"
  },
  {
    "hrsh7th/cmp-path"
  },
  {
    "hrsh7th/cmp-cmdline"
  },
  {
    "hrsh7th/nvim-cmp"
  },
  {
    "onsails/lspkind.nvim"
  },

  -- Snippets
  {
    "hrsh7th/cmp-vsnip"
  },
  {
    "hrsh7th/vim-vsnip"
  },

  -- Icons
  {
    "kyazdani42/nvim-web-devicons"
  },

  -- File browser
  {
    "kyazdani42/nvim-tree.lua",
    config = function()
      require("nvim-tree").setup {}
      vim.api.nvim_set_keymap("n", "<A-1>", ":NvimTreeToggle<CR>", {})
    end
  },

  -- JSON Schema Store
  {
    "b0o/schemastore.nvim"
  },

  -- Trouble LSP diagnostics
  {
    "folke/trouble.nvim",
    requires = "kyazdani42/nvim-web-devicons",
    config = function()
      require("trouble").setup {
        use_diagnostic_signs = true
      }
      require("thismat.keymaps").diagnotics_toggle(":TroubleToggle<CR>")
    end
  },

  -- Bufferline
  {
    "akinsho/bufferline.nvim",
    tag = "v3.*",
    config = function()
      require("bufferline").setup {
        options = {
          show_buffer_close_icons = false,
          show_close_icon = false,
          diagnostics = "nvim_lsp",
          diagnostics_indicator = function(count, level, diagnostics_dict, context)
            local icon = level:match("error") and " " or " "
            return " " .. icon .. count
          end
      },
      }
    end
  },

  -- LUA Dev (Neovim Specific)
  {
    "folke/neodev.nvim",
    config = function()
      require("neodev").setup {}
    end
  },

  -- Status line
  {
    "nvim-lualine/lualine.nvim",
    config = function()
      require("lualine").setup {}
    end
  }
}

return plugins
