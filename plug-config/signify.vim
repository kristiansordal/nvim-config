let g:signify_sign_add = '+'
let g:signify_sign_delete = '-'
let g:signify_sign_delete_first_line = '_'
let g:signify_sign_change = '~'

let g:signify_sign_show_count = 0
let g:signify_sign_show_text = 1

nmap <leader>gj <plug>(signify-next-hunk)
nmap <leader>gk <plug>(signify-prev-hunk)
nmap<leader> gJ 9999<leader>gj
nmap<leader> gK 9999<leader>gk

highlight SignifySignAdd ctermbg=green
highlight SignifySignDelete ctermbg=green
highlight SignifySignYellow ctermbg=green
