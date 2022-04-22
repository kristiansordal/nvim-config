" --- vimtex settings
let g:tex_flavor='latex'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'

" --- PDF viewer
let g:vimtex_view_general_viewer = 'zathura'
let g:vimtex_view_general_options
  \ = '-reuse-instance -forward-search @tex @line @pdf'

let maplocalleader="\<Space>"
