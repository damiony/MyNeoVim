local dap = require "dap"
vim.fn.sign_define('DapBreakpoint', {text='⨀', texthl='', linehl='', numhl=''})
vim.fn.sign_define('DapStopped', {text='⨂', texthl='Search', linehl='Visual', numhl='Visual'})

require "dap/nvim-dap-go"
require "dap/nvim-dap-rust"
