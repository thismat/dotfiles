vim.o.completeopt = "menuone,noinsert,noselect"

local custom_attach = function(client)
  -- TODO: Figure out if I actually need this
  -- vim.api.nvim_buf_set_option(0, "omnifunc", "v:lua.vim.lsp.omnifunc")

  on_attach = require'completion'.on_attach()
end

require'lspconfig'.gopls.setup{on_attach=custom_attach}
require'lspconfig'.tsserver.setup{on_attach=custom_attach}
