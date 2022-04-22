function! s:goyo_enter()
  unmap j
  unmap k
endfunction

function! s:goyo_leave()
  map j gj
  map k gk
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()
