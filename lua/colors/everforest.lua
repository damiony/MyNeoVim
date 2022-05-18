vim.cmd([[
  " Important!!
  if has('termguicolors')
    set termguicolors
  endif
  let g:everforest_transparent_background = 0
  " For dark version.
  set background=dark
  " For light version.
  " set background=light
  " Available values: 'hard', 'medium'(default), 'soft'
  let g:everforest_background = 'hard'
  " For better performance
  let g:everforest_better_performance = 1
  colorscheme everforest
  :hi EndOfBuffer guifg='#2f353e'
]])
