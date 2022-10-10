local opts = { noremap = true }

-- TODO: Move this or leave it here?
-- vim.api.nvim_set_keymap("n", "<A-1>", ":NvimTreeToggle<CR>", opts)

-- Diagnotics keymaps
vim.keymap.set("n", "gh", vim.diagnostic.open_float, opts)
vim.keymap.set("n", "ne", vim.diagnostic.goto_next, opts)
vim.keymap.set("n", "nE", vim.diagnostic.goto_prev, opts)
