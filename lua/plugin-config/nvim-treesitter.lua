require'nvim-treesitter.configs'.setup {
  -- 安装 language parser
  -- :TSInstallInfo 命令查看支持的语言
  ensure_installed = {"html", "css", "vim", "lua", "javascript", "typescript", "tsx", "go", "rust"},
  -- 启用代码高亮功能
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false
  }
}
