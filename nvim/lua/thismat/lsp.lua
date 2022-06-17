vim.o.completeopt = "menuone,noinsert,noselect"

local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

local custom_attach = function(client)
  -- TODO: Figure out if I actually need this
  -- vim.api.nvim_buf_set_option(0, "omnifunc", "v:lua.vim.lsp.omnifunc")

  on_attach = require'completion'.on_attach()
end

require'lspconfig'.powershell_es.setup{on_attach=custom_attach}
require'lspconfig'.bashls.setup{cmd={'bash-language-server.cmd', 'start'}, on_attach=custom_attach}
require'lspconfig'.cssls.setup{on_attach=custom_attach}
require'lspconfig'.html.setup{cmd={'html-languageserver.cmd', '--stdio'}, on_attach=custom_attach}
require'lspconfig'.gopls.setup{on_attach=custom_attach}
require'lspconfig'.tsserver.setup{on_attach=custom_attach}
require'lspconfig'.rust_analyzer.setup{
  on_attach=custom_attach,
  capabilities=capabilities
}
