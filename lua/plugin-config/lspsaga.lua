local lspsaga = require 'lspsaga'
lspsaga.setup { -- defaults ...
  debug = false,
  use_saga_diagnostic_sign = true,
  -- diagnostic sign
  error_sign = "",
  warn_sign = "",
  hint_sign = "",
  infor_sign = "",
  diagnostic_header_icon = "   ",
  -- code action title icon
  code_action_icon = " ",
  code_action_prompt = {
    enable = true,
    sign = true,
    sign_priority = 40,
    virtual_text = true,
  },
  finder_definition_icon = "  ",
  finder_reference_icon = "  ",
  max_preview_lines = 10,
  finder_action_keys = {
    open = "o",
    vsplit = "s",
    split = "i",
    quit = "q",
    scroll_down = "<C-f>",
    scroll_up = "<C-b>",
  },
  code_action_keys = {
    quit = "q",
    exec = "<CR>",
  },
  rename_action_keys = {
    quit = "<C-c>",
    exec = "<CR>",
  },
  definition_preview_icon = "  ",
  border_style = "single",
  rename_prompt_prefix = "➤",
  rename_output_qflist = {
    enable = false,
    auto_open_qflist = false,
  },
  server_filetype_map = {},
  diagnostic_prefix_format = "%d. ",
  diagnostic_message_format = "%m %c",
  highlight_prefix = false,
}

--local opts = { noremap=true, silent=true }
--vim.api.nvim_set_keymap('n', 'gd', ':Lspsaga lsp_finder<CR>', opts)
---- code action
--vim.api.nvim_set_keymap('n', '<space>ca', ':Lspsaga code_action<CR>', opts)
--vim.api.nvim_set_keymap('v', '<space>ca', ':<C-U>Lspsaga range_code_action<CR>', opts)
--
---- show hover doc
--vim.api.nvim_set_keymap('n', 'K', ':Lspsaga hover_doc<CR>', opts)
---- scroll down hover doc or scroll in definition preview
--vim.api.nvim_set_keymap('n', '<C-f>', '<cmd>lua require("lspsaga.action").smart_scroll_with_saga(1)<CR>', opts)
---- scroll up hover doc
--vim.api.nvim_set_keymap('n', '<C-b>', '<cmd>lua require("lspsaga.action").smart_scroll_with_saga(-1)<CR>', opts)
--
---- signature
--vim.api.nvim_set_keymap('n', 'gs', ':Lspsaga signature_help<CR>', opts)
--
---- rename
--vim.api.nvim_set_keymap('n', '<space>rn', ':Lspsaga rename<CR>', opts)
--
---- preview definition
--vim.api.nvim_set_keymap('n', 'gr', ':Lspsaga preview_definition<CR>', opts)
--
---- float terminal
--vim.api.nvim_set_keymap('n', '<space>d', ':Lspsaga open_floaterm<CR>', opts)
--vim.api.nvim_set_keymap('t', '<space>d', '<C-\\><C-n>:Lspsaga close_floaterm<CR>', opts)
--
---- diagnostic
--vim.api.nvim_set_keymap('n', '<space>e', '<cmd>lua require"lspsaga.diagnostic".show_line_diagnostics()<CR>', opts)
--vim.api.nvim_set_keymap('n', '<space>q', '<cmd>lua require"lspsaga.diagnostic".show_cursor_diagnostics()<CR>', opts)
--vim.api.nvim_set_keymap('n', '[e', ':Lspsaga diagnostic_jump_next<CR>', opts)
--vim.api.nvim_set_keymap('n', ']e', ':Lspsaga diagnostic_jump_prev<CR>', opts)
