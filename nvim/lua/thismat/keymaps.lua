local M = {}

local opts = { noremap = true }

---Setup buffer navigation keybindings
function M.buffer_setup()
  -- Buffer navigation
  vim.keymap.set("n", "<A-h>", ":bprevious<CR>", opts);
  vim.keymap.set("n", "<A-l>", ":bnext<CR>", opts);
end

---Setup diagnotics normal mode bindings
function M.diagnotics()
  -- Diagnotics keymaps
  vim.keymap.set("n", "gh", vim.diagnostic.open_float, opts)
  vim.keymap.set("n", "ne", vim.diagnostic.goto_next, opts)
  vim.keymap.set("n", "nE", vim.diagnostic.goto_prev, opts)
end

---Setup a specific command for toggling diagnotics
---@param cmd string
function M.diagnotics_toggle(cmd)
  vim.keymap.set("n", "<A-4>", cmd, opts)
end

---Setup insert mode bindings
function M.insert_mode()
  -- Insert Mode Specific
  vim.keymap.set("i", "<C-BS>", "<C-w>", opts);
  vim.keymap.set("i", "<C-h>", "<C-w>", opts);
end

M.buffer_setup()
M.diagnotics()
M.insert_mode()

return M
