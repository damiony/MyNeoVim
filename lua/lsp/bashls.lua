local util = require 'lspconfig.util'
require'lspconfig'.bashls.setup{
  on_attach = require"lsp/base".attach,
  flags = {
    debounce_text_changes = 150,
  },
  cmd = { "bash-language-server", "start" },
  cmd_env = {
    GLOB_PATTERN = "*@(.sh|.inc|.bash|.command)"
  },
  filetypes = { "sh" },
  root_dir = util.find_git_ancestor,
  single_file_support = true,
  capabilities = require"lsp/base".capabilities,
}

