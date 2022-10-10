require 'lspconfig'.powershell_es.setup {
  capabilities = require('thismat.lsp.capabilities').capabilities,
  on_attach = require('thismat.lsp.options').on_attach,
  bundle_path = 'F:/Portables/powershell_es',
}
