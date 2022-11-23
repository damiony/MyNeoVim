local dap = require "dap"
vim.fn.sign_define('DapBreakpoint', {text=' ', texthl='DapUIPlayPause', linehl='', numhl=''})
vim.fn.sign_define('DapStopped', {text=' ', texthl='DapUIStop', linehl='Cursor', numhl=''})
vim.fn.sign_define('DapBreakpointRejected', {text=' ', texthl='Ignore', linehl='', numhl=''})

require "dap/nvim-dap-go"
require "dap/nvim-dap-rust"

