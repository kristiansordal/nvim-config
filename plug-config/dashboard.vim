" --- change to fuzzyfinder
let g:dashboard_default_executive= 'fzf'

" --- custom shortcuts
let g:dashboard_custom_shortcut={
\ 'last_session'       : 'ss',
\ 'find_history'       : 'fh',
\ 'find_file'          : 'ff',
\ 'new_file'           : 'cn',
\ 'change_colorscheme' : 'tc',
\ 'find_word'          : 'fa',
\ 'book_marks'         : 'fb',
\ }

let g:dashboard_custom_header = [
\' ▄█     █▄     ▄████████  ▄█        ▄████████  ▄██████▄    ▄▄▄▄███▄▄▄▄      ▄████████ ',
\'███     ███   ███    ███ ███       ███    ███ ███    ███ ▄██▀▀▀███▀▀▀██▄   ███    ███ ',
\'███     ███   ███    █▀  ███       ███    █▀  ███    ███ ███   ███   ███   ███    █▀  ',
\'███     ███  ▄███▄▄▄     ███       ███        ███    ███ ███   ███   ███  ▄███▄▄▄     ',
\'███     ███ ▀▀███▀▀▀     ███       ███        ███    ███ ███   ███   ███ ▀▀███▀▀▀		',
\'███     ███   ███    █▄  ███       ███    █▄  ███    ███ ███   ███   ███   ███    █▄  ',
\'███ ▄█▄ ███   ███    ███ ███▌    ▄ ███    ███ ███    ███ ███   ███   ███   ███    ███ ',
\'▀███▀███▀    ██████████ █████▄▄██ ████████▀   ▀██████▀   ▀█   ███   █▀    ██████████	',
\]

let g:dashboard_custom_footer = ['Kristian Sørdal']

nmap ss :<C-u>SessionSave<CR>
nmap sl :<C-u>SessionLoad<CR>
nnoremap <silent> fh :DashboardFindHistory<CR>
nnoremap <silent> ff :DashboardFindFile<CR>
nnoremap <silent> tc :DashboardChangeColorscheme<CR>
nnoremap <silent> fa :DashboardFindWord<CR>
nnoremap <silent> fb :DashboardJumpMark<CR>
nnoremap <silent> cn :DashboardNewFile<CR>
