local dap, dapui = require("dap"), require("dapui")
--dapui.setup({
--  icons = { expanded = "▾", collapsed = "▸" },
--  mappings = {
--    -- Use a table to apply multiple mappings
--    expand = { "<CR>", "<2-LeftMouse>" },
--    open = "o",
--    remove = "d",
--    edit = "e",
--    repl = "r",
--    toggle = "t",
--  },
--  sidebar = {
--    -- You can change the order of elements in the sidebar
--    elements = {
--      -- Provide as ID strings or tables with "id" and "size" keys
--      {
--        id = "scopes",
--        size = 0.5, -- Can be float or integer > 1
--      },
----      { id = "breakpoints", size = 0.25 },
--      { id = "stacks", size = 0.5 },
----      { id = "watches", size = 00.25 },
--    },
--    size = 40,
--    position = "right", -- Can be "left", "right", "top", "bottom"
--  },
--  tray = {
--    elements = { "repl" },
--    size = 10,
--    position = "bottom", -- Can be "left", "right", "top", "bottom"
--  },
--  floating = {
--    max_height = nil, -- These can be integers or a float between 0 and 1.
--    max_width = nil, -- Floats will be treated as percentage of your screen.
--    border = "single", -- Border style. Can be "single", "double" or "rounded"
--    mappings = {
--      close = { "q", "<Esc>" },
--    },
--  },
--  windows = { indent = 1 },
--})
--

require("dapui").setup({
  icons = { expanded = "▾", collapsed = "▸" },
  mappings = {
    -- Use a table to apply multiple mappings
    expand = { "<CR>", "<2-LeftMouse>" },
    open = "o",
    remove = "d",
    edit = "e",
    repl = "r",
    toggle = "t",
  },
  -- Expand lines larger than the window
  -- Requires >= 0.7
  expand_lines = vim.fn.has("nvim-0.7"),
  -- Layouts define sections of the screen to place windows.
  -- The position can be "left", "right", "top" or "bottom".
  -- The size specifies the height/width depending on position.
  -- Elements are the elements shown in the layout (in order).
  -- Layouts are opened in order so that earlier layouts take priority in window sizing.
  layouts = {
    {
      elements = {
      -- Elements can be strings or table with id and size keys.
        { id = "scopes", size = 0.25 },
        "breakpoints",
        "stacks",
        "watches",
      },
      size = 40,
      position = "right",
    },
    {
      elements = {
        "repl",
        "console",
      },
      size = 10,
      position = "bottom",
    },
  },
  floating = {
    max_height = nil, -- These can be integers or a float between 0 and 1.
    max_width = nil, -- Floats will be treated as percentage of your screen.
    border = "single", -- Border style. Can be "single", "double" or "rounded"
    mappings = {
      close = { "q", "<Esc>" },
    },
  },
  windows = { indent = 1 },
  render = {
    max_type_length = nil, -- Can be integer or nil.
  }
})

dap.listeners.after.event_initialized["dapui_config"] = function()
  dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
  dapui.close()
  --dap.repl.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
  dapui.close()
  --dap.repl.close()
end
