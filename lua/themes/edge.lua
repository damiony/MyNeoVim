vim.cmd([[
  if has('termguicolors')
    set termguicolors
  endif
  let g:edge_style = 'aura'
  let g:edge_better_performance = 1
  colorscheme edge

  let g:edge_transparent_background = 0
  set background=dark
  :hi EndOfBuffer guifg='#2f353d'
]])
