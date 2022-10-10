local opts = { noremap = true }

-- Diagnotics keymaps
vim.keymap.set("n", "gh", vim.diagnostic.open_float, opts)
vim.keymap.set("n", "ne", vim.diagnostic.goto_next, opts)
vim.keymap.set("n", "nE", vim.diagnostic.goto_prev, opts)
