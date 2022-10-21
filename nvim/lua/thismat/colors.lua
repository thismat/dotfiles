local tk = require("thismat.tokyo-custom-config");

require("tokyonight").setup({
  style = "day",
  on_highlights = tk.handle_highlight
})

vim.cmd [[colorscheme tokyonight]]

