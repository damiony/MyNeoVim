local opts = { noremap=true, silent=true }

vim.api.nvim_set_keymap('n', '<C-n>', ':NvimTreeFindFileToggle<CR>', opts)
vim.api.nvim_set_keymap('i', '<C-q>', '<esc>', opts)
-- vim.api.nvim_set_keymap('i', '<C-a>', '<esc>ggvG', opts)
-- vim.api.nvim_set_keymap('n', '<C-a>', '<esc>ggvG', opts)
-- +y进行系统粘贴，实用于macos系统
vim.api.nvim_set_keymap('v', '+y', ':w !pbcopy<CR><CR>', opts)


--*******************************--
--                               --
--        Lspsaga config         --
--                               --
--*******************************--

vim.api.nvim_set_keymap('n', 'gd', ':Lspsaga lsp_finder<CR>', opts)
-- code action
vim.api.nvim_set_keymap('n', '<space>ca', ':Lspsaga code_action<CR>', opts)
vim.api.nvim_set_keymap('v', '<space>ca', ':<C-U>Lspsaga range_code_action<CR>', opts)
-- show hover doc
vim.api.nvim_set_keymap('n', 'K', ':Lspsaga hover_doc<CR>', opts)
-- scroll down hover doc or scroll in definition preview
vim.api.nvim_set_keymap('n', '<C-f>', '<cmd>lua require("lspsaga.action").smart_scroll_with_saga(1)<CR>', opts)
-- scroll up hover doc
vim.api.nvim_set_keymap('n', '<C-b>', '<cmd>lua require("lspsaga.action").smart_scroll_with_saga(-1)<CR>', opts)
-- signature
vim.api.nvim_set_keymap('n', 'gs', ':Lspsaga signature_help<CR>', opts)
-- rename
vim.api.nvim_set_keymap('n', '<space>rn', ':Lspsaga rename<CR>', opts)
-- preview definition
vim.api.nvim_set_keymap('n', 'gr', ':Lspsaga preview_definition<CR>', opts)
-- float terminal
vim.api.nvim_set_keymap('n', '<C-d>', ':Lspsaga open_floaterm<CR>', opts)
vim.api.nvim_set_keymap('t', '<C-d>', '<C-\\><C-n>:Lspsaga close_floaterm<CR>', opts)
-- diagnostic
vim.api.nvim_set_keymap('n', '<space>e', '<cmd>lua require"lspsaga.diagnostic".show_line_diagnostics()<CR>', opts)
vim.api.nvim_set_keymap('n', '<space>q', '<cmd>lua require"lspsaga.diagnostic".show_cursor_diagnostics()<CR>', opts)
vim.api.nvim_set_keymap('n', '[e', ':Lspsaga diagnostic_jump_next<CR>', opts)
vim.api.nvim_set_keymap('n', ']e', ':Lspsaga diagnostic_jump_prev<CR>', opts)


--*******************************--
--                               --
--          Telescope            --
--                               --
--*******************************--

vim.api.nvim_set_keymap('n', '<C-p>', '<cmd>Telescope find_files<cr>', opts)
vim.api.nvim_set_keymap('n', '<C-g>', '<cmd>Telescope live_grep<cr>', opts)
vim.api.nvim_set_keymap('n', '<C-l>', '<cmd>Telescope grep_string<cr>', opts)
vim.api.nvim_set_keymap('n', '<C-h>', '<cmd>Telescope help_tags<cr>', opts)
--vim.api.nvim_set_keymap('n', '<C-b>', '<cmd>Telescope buffers<cr>', opts)

vim.api.nvim_set_keymap('n', "gd", "<cmd>Telescope lsp_definitions theme=dropdown<CR>", opts)
vim.api.nvim_set_keymap('n', "gr", "<cmd>Telescope lsp_references theme=dropdown<CR>", opts)
vim.api.nvim_set_keymap('n', "go", "<cmd>Telescope diagnostics theme=dropdown<CR>", opts)
vim.api.nvim_set_keymap('n', "gi", "<cmd>Telescope lsp_implementations theme=dropdown<CR>", opts)
vim.api.nvim_set_keymap('n', "gt", "<cmd>Telescope lsp_type_definitions theme=dropdown<CR>", opts)
--vim.api.nvim_set_keymap('n', "<space>ca", "<cmd>Telescope lsp_code_actions theme=dropdown<CR>", opts)
--vim.api.nvim_set_keymap('v', '<space>ca', ':<C-U>Telescope lsp_code_actions theme=dropdown<CR>', opts)



--**********************************--
--                                  --
--               Dap                --
--                                  --
--**********************************--

vim.api.nvim_set_keymap('n', '<F5>', '<cmd>lua require"dap".continue()<CR>', opts)
vim.api.nvim_set_keymap('n', '<F6>', '<cmd>lua require"dap".step_over()<CR>', opts)
vim.api.nvim_set_keymap('n', '<F7>', '<cmd>lua require"dap".step_into()<CR>', opts)
vim.api.nvim_set_keymap('n', '<F8>', '<cmd>lua require"dap".step_out()<CR>', opts)
vim.api.nvim_set_keymap('n', '<F9>', '<cmd>lua require"dap".run_last()<CR>', opts)
vim.api.nvim_set_keymap('n', '<F10>', '<cmd>lua require"dap".terminate()<CR>', opts)
vim.api.nvim_set_keymap('n', '<space>bb', '<cmd>lua require"dap".toggle_breakpoint()<CR>', opts)
vim.api.nvim_set_keymap('n', '<space>bl', '<cmd>Telescope dap list_breakpoints<CR>', opts)
vim.api.nvim_set_keymap('n', '<space>bc', '<cmd>lua require"dap".clear_breakpoints()<CR>', opts)


--**********************************--
--                                  --
--           Bufferline             --
--                                  --
--**********************************--
vim.api.nvim_set_keymap('n', '<leader>1', ':BufferLineGoToBuffer 1<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>2', ':BufferLineGoToBuffer 2<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>3', ':BufferLineGoToBuffer 3<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>4', ':BufferLineGoToBuffer 4<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>5', ':BufferLineGoToBuffer 5<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>6', ':BufferLineGoToBuffer 6<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>7', ':BufferLineGoToBuffer 7<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>8', ':BufferLineGoToBuffer 8<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>9', ':BufferLineGoToBuffer 9<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>b]', ':BufferLineCycleNext<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>b[', ':BufferLineCyclePrev<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>bd', ':bdelete!<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>bh', ':BufferLineCloseLeft<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>bl', ':BufferLineCloseRight<CR>', opts)


--********************************--
--                                --
--           Toggleterm           --
--                                --
--********************************--
-- quit insert momde
vim.api.nvim_set_keymap('t', '<C-q>', '<C-\\><C-n>', opts)
-- open or close terminal
vim.api.nvim_set_keymap('n', 'TT', "<cmd>exe v:count.'ToggleTerm'<CR>", opts)
-- open or close float terminal
vim.api.nvim_set_keymap('n', 'TF', "<cmd>lua require('toggleterm').float_toggle()<CR>", opts)
-- open or close all terminal
vim.api.nvim_set_keymap('n', 'TA', "<cmd>ToggleTermToggleAll<CR>", opts)


--*************************************--
--                                     --
--           Symbols-outline           --
--                                     --
--*************************************--
vim.api.nvim_set_keymap('n', '<space>o', ':SymbolsOutline<CR>', opts)



--*************************************--
--                                     --
--                Ultest               --
--                                     --
--*************************************--
--vim.api.nvim_set_keymap('n', '<space>us', '<cmd>UltestSummary!<CR>', opts)
--vim.api.nvim_set_keymap('n', '<space>uc', '<cmd>UltestSummaryClose<CR>', opts)
--vim.api.nvim_set_keymap('n', '<space>ut', '<cmd>Ultest<CR>', opts)
--vim.api.nvim_set_keymap('n', '<space>un', '<cmd>UltestNearest<CR>', opts)
--vim.api.nvim_set_keymap('n', '<space>ud', '<cmd>UltestDebugNearest<CR>', opts)
--vim.api.nvim_set_keymap('n', '<space>uo', '<cmd>UltestOutput<CR>', opts)



--*************************************--
--                                     --
--               neotest               --
--                                     --
--*************************************--
vim.api.nvim_set_keymap('n', '<space>nr', ':lua require("neotest").run.run()<CR>', opts)
vim.api.nvim_set_keymap('n', '<space>nf', ':lua require("neotest").run.run(vim.fn.expand("%"))<CR>', opts)
vim.api.nvim_set_keymap('n', '<space>nd', ':lua require("neotest").run.run({strategy = "dap"})<CR>', opts)
vim.api.nvim_set_keymap('n', '<space>ns', ':lua require("neotest").summary.toggle()<CR>', opts)
vim.api.nvim_set_keymap('n', '<space>no', ':lua require("neotest").output.open({ enter = false })<CR>', opts)




--*************************************--
--                                     --
--               rust-tools            --
--                                     --
--*************************************--
vim.api.nvim_set_keymap('n', '<leader>rr', ':RustRunnables<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>ra', ':RustHoverActions<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>rd', ':RustDebuggables<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>rj', ':RustMoveItemDown<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>rk', ':RustMoveItemUp<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>ro', ':RustOpenCargo<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>rp', ':RustParentModule<CR>', opts)


--*************************************--
--                                     --
--              nvim-dap-go            --
--                                     --
--*************************************--
vim.api.nvim_set_keymap('n', '<leader>g', ':lua require("dap-go").debug_test()<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>gl', ':lua require("dap-go").debug_last_test()<CR>', opts)
