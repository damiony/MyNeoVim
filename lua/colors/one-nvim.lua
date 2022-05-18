vim.g.one_nvim_transparent_bg = true
vim.cmd([[
  if has('termguicolors')
    set termguicolors
  endif
  set background=dark
  colorscheme one-nvim
]])
