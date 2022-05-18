local opts = { noremap = true, silent = true }
local Toggleterm = require("toggleterm")
-- default config
Toggleterm.setup(
    {
        --  insert mode for opened terminal
        start_in_insert = true,
        -- size of terminal
        size = 20,
        -- close the terminal window when the process exits
        close_on_exit = true,
        -- default shell
        shell = vim.o.shell,
        -- terminal direction
        direction = "horizontal",
        on_open = function(term)
          vim.api.nvim_buf_set_keymap(term.bufnr, 'n', '<C-c>', ':close<CR>', opts)
        end
    }
)

-- custom terminal
local Terminal = require("toggleterm.terminal").Terminal
local floatTerm =
    Terminal:new(
    {
        hidden = true,
        direction = "float",
        float_opts = {
          border = "double"
        },
        on_open = function(term)
          vim.api.nvim_buf_set_keymap(term.bufnr, 't', '<C-q>', '<C-\\><C-n>:close<CR>', opts)
        end
    }
)

-- define new method
Toggleterm.float_toggle = function()
    floatTerm:toggle()
end


