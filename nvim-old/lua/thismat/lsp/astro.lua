require'lspconfig'.astro.setup{
        capabilities = require('thismat.lsp.capabilities').capabilities,
        on_attach = require('thismat.lsp.options').on_attach
}
