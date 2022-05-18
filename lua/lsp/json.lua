lspconfig = require "lspconfig"
util = require "lspconfig/util"

lspconfig.jsonls.setup {
  on_attach = require"lsp/base".attach,
  flags = {
    debounce_text_changes = 150,
  },
  capabilities = require"lsp/base".capabilities,
}

