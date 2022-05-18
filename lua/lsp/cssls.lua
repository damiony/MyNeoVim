require'lspconfig'.cssls.setup {
  on_attach = require"lsp/base".attach,
  capabilities = require"lsp/base".capabilities,
}
