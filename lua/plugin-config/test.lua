--require("ultest").setup({
--  builders = {
--    ["go#gotest"] = function(cmd)
--      local args = {}
--      for i = 3, #cmd - 1, 1 do
--        local arg = cmd[i]
--        if vim.startswith(arg, "-") then
--          -- Delve requires test flags be prefix with 'test.'
--          arg = "-test." .. string.sub(arg, 2)
--        end
--        args[#args + 1] = arg
--      end
--      return {
--        dap = {
--          type = "go",
--          request = "launch",
--          mode = "test",
--          program = "${workspaceFolder}",
--          dlvToolPath = vim.fn.exepath("dlv"),
--          args = args
--        },
--        parse_result = function(lines)
--          return lines[#lines] == "FAIL" and 1 or 0
--        end
--      }
--    end,
--  }
--})
--
--vim.cmd([[
--  let test#strategy = "neovim"
--  let test#go#runner = "gotest"
--  let test#rust#runner = "cargotest"
--  let test#go#gotest#options = "-v"
--]])


require("neotest").setup({
  adapters = {
    --require("neotest-plenary"),
    --require("neotest-vim-test")({
    --  ignore_file_types = { "go", "vim", "lua" },
    --}),
    require('neotest-go'),
  },
  diagnostic = {
    enabled = true
  },
  floating = {
    border = "rounded",
    max_height = 0.6,
    max_width = 0.6
  },
  highlights = {
    adapter_name = "NeotestAdapterName",
    border = "NeotestBorder",
    dir = "NeotestDir",
    expand_marker = "NeotestExpandMarker",
    failed = "NeotestFailed",
    file = "NeotestFile",
    focused = "NeotestFocused",
    indent = "NeotestIndent",
    namespace = "NeotestNamespace",
    passed = "NeotestPassed",
    running = "NeotestRunning",
    skipped = "NeotestSkipped",
    test = "NeotestTest"
  },
  icons = {
    child_indent = "│",
    child_prefix = "├",
    collapsed = "─",
    expanded = "╮",
    failed = "✖",
    final_child_indent = " ",
    final_child_prefix = "╰",
    non_collapsible = "─",
    passed = "✔",
    running = "🗘",
    skipped = "ﰸ",
    unknown = "?"
  },
  output = {
    enabled = true,
    open_on_run = "short"
  --  open_on_run = true,
  },
  run = {
    enabled = true
  },
  status = {
    enabled = true
  },
  strategies = {
    integrated = {
      height = 40,
      width = 120
    }
  },
  summary = {
    enabled = true,
    expand_errors = true,
    follow = true,
    mappings = {
      attach = "a",
      expand = { "<CR>", "<2-LeftMouse>" },
      expand_all = "e",
      jumpto = "i",
      output = "o",
      run = "r",
      short = "O",
      stop = "u"
    }
  }
})
