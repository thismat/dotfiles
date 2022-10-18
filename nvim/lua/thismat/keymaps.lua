local opts = { noremap = true }

-- Diagnotics keymaps
vim.keymap.set("n", "gh", vim.diagnostic.open_float, opts)
vim.keymap.set("n", "ne", vim.diagnostic.goto_next, opts)
vim.keymap.set("n", "nE", vim.diagnostic.goto_prev, opts)

-- Buffer navigation
vim.keymap.set("n", "<A-h>", ":bprevious<CR>", opts);
vim.keymap.set("n", "<A-l>", ":bnext<CR>", opts);

-- Insert Mode Specific
vim.keymap.set("i", "<C-BS>", "<C-w>", opts);
vim.keymap.set("i", "<C-h>", "<C-w>", opts);
