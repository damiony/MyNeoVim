require'lspconfig'.tsserver.setup{
  on_attach = require"lsp/base".attach,
  flags = {
    debounce_text_changes = 150,
  },
}


