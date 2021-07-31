fun! ColorMyPencils()
  colorscheme dracula
  set background=dark

  highlight netrwDir guifg=#5eacd3
  highlight LineNr guifg=#5eacd3
endfun
call ColorMyPencils()

nnoremap <leader>vwm :call ColorMyPencils()<CR>
