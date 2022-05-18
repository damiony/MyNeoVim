local lspconfig = require "lspconfig"

lspconfig.rust_analyzer.setup {
  on_attach = require"lsp/base".attach,
  flags = {
    debounce_text_changes = 150,
  },
  capabilities = require"lsp/base".capabilities,
}
