require'lspconfig'.jsonls.setup{
  capabilities = require('thismat.lsp.capabilities').capabilities,
  on_attach = require('thismat.lsp.options').on_attach,
  settings = {
    json = {
      schemas = require('schemastore').json.schemas(),
      validate = { enable = true }
    }
  }
}
