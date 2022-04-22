map <C-f> :Files<CR>
map <leader>b :Buffer<CR>
nnoremap <leader>t :Tags<CR>
nnoremap <leader>m :Marksk<CR>

let g:fzf_tags_command = 'ctags -R'

" --- border color
let g:fzf_layout = {'up': '~50%', 'window': {'width': 0.8, 'height': 0.8, 'yoffset': 0.5, 'xoffset': 0.5}}

let $FZF_DEFAULT_OPTS = '--layout=reverse --info=inline'
" let $FZF_DEFAULT_COMMAND = "rg --files --hidden"

" let g:fzf_colors = 
" \{'fg':			['fg', '-1'],
" \ 'bg':			['bg', '-1'],
" \ 'hl':			['fg', '#c678dd'],
" \ 'fg+':		['fg', 'CursorLine', 'CursorColumn', 'Normal'],
" \ 'bg+':		['bg', 'CursorLine', 'CursorColumn'],
" \ 'hl+':		['fg', 'Statement'],
" \ 'info':		['fg', 'PreProc'],
" \ 'border':		['fg', 'Ignore'],
" \ 'prompt':		['fg', 'Conditional'],
" \ 'pointer':	['fg', 'exception'],
" \ 'marker':		['fg', 'Keyword'],
" \ 'spinner':	['fg', 'label'],
" \ 'header':		['fg', 'Comment'] }

let g:fzf_colors = 
\{'fg':			['fg', '-1'],
\ 'bg':			['bg', '-1'],
\ 'hl':			['fg', '#c678dd'],
\ 'fg+':		['fg', '#ffffff'],
\ 'bg+':		['bg', '#4b5263'],
\ 'hl+':		['fg', '#d858fe'],
\ 'info':		['fg', '#98c397'],
\ 'border':		['fg', 'Ignore'],
\ 'prompt':		['fg', '#61afef'],
\ 'pointer':	['fg', '#be5046'],
\ 'marker':		['fg', '#e5c07b'],
\ 'spinner':	['fg', '#61afef'],
\ 'header':		['fg', '#61afef'] }
" command! -bang -nargs=? -complete=dir Files
	" \ call fzf#vim#files(<q-args>, fzf#vim#with_preview({options: ['--layout=']}))

" command! -bang -nargs=? -complete=dir Files
" \ call fzf#vim#files(<q-args>, {'options': ['--layout=reverse', '--info=inline']}, <bang>0)
