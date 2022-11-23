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


--require("neotest").setup({
--  adapters = {
--    --require("neotest-plenary"),
--    --require("neotest-vim-test")({
--    --  ignore_file_types = { "go", "vim", "lua" },
--    --}),
--    require('neotest-go'),
--  },
--  diagnostic = {
--    enabled = true
--  },
--  floating = {
--    border = "rounded",
--    max_height = 0.6,
--    max_width = 0.6
--  },
--  highlights = {
--    adapter_name = "NeotestAdapterName",
--    border = "NeotestBorder",
--    dir = "NeotestDir",
--    expand_marker = "NeotestExpandMarker",
--    failed = "NeotestFailed",
--    file = "NeotestFile",
--    focused = "NeotestFocused",
--    indent = "NeotestIndent",
--    namespace = "NeotestNamespace",
--    passed = "NeotestPassed",
--    running = "NeotestRunning",
--    skipped = "NeotestSkipped",
--    test = "NeotestTest"
--  },
--  icons = {
--    child_indent = "│",
--    child_prefix = "├",
--    collapsed = "─",
--    expanded = "╮",
--    failed = "✖",
--    final_child_indent = " ",
--    final_child_prefix = "╰",
--    non_collapsible = "─",
--    passed = "✔",
--    running = "🗘",
--    skipped = "ﰸ",
--    unknown = "?"
--  },
--  output = {
--    enabled = true,
--    open_on_run = "short"
--  --  open_on_run = true,
--  },
--  run = {
--    enabled = true
--  },
--  status = {
--    enabled = true
--  },
--  strategies = {
--    integrated = {
--      height = 40,
--      width = 120
--    }
--  },
--  summary = {
--    enabled = true,
--    expand_errors = true,
--    follow = true,
--    mappings = {
--      attach = "a",
--      expand = { "<CR>", "<2-LeftMouse>" },
--      expand_all = "e",
--      jumpto = "i",
--      output = "o",
--      run = "r",
--      short = "O",
--      stop = "u"
--    }
--  }
--})


require("neotest").setup(
  {
    adapters = {
      --require("neotest-plenary"),
      --require("neotest-vim-test")({
      --  ignore_file_types = { "go", "vim", "lua" },
      --}),
      require('neotest-go'),
      -- neotest-rust 需要安装cargo-nextest工具
      -- cargo install cargo-nextest
      require('neotest-rust'),
      -- require('neotest-plenary'),
    },
    benchmark = {
      enabled = true
    },
    consumers = {},
    default_strategy = "integrated",
    diagnostic = {
      enabled = true
    },
    discovery = {
      concurrent = 0,
      enabled = true
    },
    floating = {
      border = "rounded",
      max_height = 0.6,
      max_width = 0.6,
      options = {}
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
      marked = "NeotestMarked",
      namespace = "NeotestNamespace",
      passed = "NeotestPassed",
      running = "NeotestRunning",
      select_win = "NeotestWinSelect",
      skipped = "NeotestSkipped",
      target = "NeotestTarget",
      test = "NeotestTest",
      unknown = "NeotestUnknown"
    },
    icons = {
      child_indent = "│",
      child_prefix = "├",
      collapsed = "─",
      expanded = "╮",
      failed = "",
      final_child_indent = " ",
      final_child_prefix = "╰",
      non_collapsible = "─",
      passed = "",
      running = "",
      running_animated = { "/", "|", "\\", "-", "/", "|", "\\", "-" },
      skipped = "",
      unknown = ""
    },
    jump = {
      enabled = true
    },
    log_level = 3,
    output = {
      enabled = true,
      open_on_run = "short"
    },
    output_panel = {
      enabled = true,
      open = "botright split | resize 15"
    },
    projects = {},
    run = {
      enabled = true
    },
    running = {
      concurrent = true
    },
    status = {
      enabled = true,
      signs = true,
      virtual_text = false
    },
    strategies = {
      integrated = {
        height = 40,
        width = 120
      }
    },
    summary = {
      animated = true,
      enabled = true,
      expand_errors = true,
      follow = true,
      mappings = {
        attach = "a",
        clear_marked = "M",
        clear_target = "T",
        debug = "d",
        debug_marked = "D",
        expand_all = { "<CR>", "<2-LeftMouse>" },
        expand = "e",
        jumpto = "i",
        mark = "m",
        next_failed = "J",
        output = "o",
        prev_failed = "K",
        run = "r",
        run_marked = "R",
        short = "O",
        stop = "u",
        target = "t"
      }
    }
  }
)
