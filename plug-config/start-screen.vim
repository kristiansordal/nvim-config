nnoremap <leader>s :Startify<CR>
let g:startify_session_dir = '~/.config/nvim/session'

" --- lists
let g:startify_lists = [
	\ {'type': 'files', 'header':['   Files']},
	\ {'type': 'bookmarks', 'header':['   Bookmarks']},
	\ {'type': 'dir', 'header':['   Current Directory ' . getcwd()]},
	\ {'type': 'sessions', 'header':['   Sessions']},
	\]

" --- bookmarks
let g:startify_bookmarks = [
	\{'n':'~/.config/nvim/'},
	\{'d':'~/dev/'},
	\{'b':'~/dev/bachelor'}
	\]

" --- auto enter Startify and nerdtree 
autocmd VimEnter *
	\   if !argc()
	\ |		Startify
	\ |	endif

" --- custom header
let g:startify_custom_header = [
	\'',
	\'  ___        ___   _______    ___        ________   ________   _____ ______    _______      ',
	\' |\   \     |\  \ |\  ___ \  |\  \      |\   ____\ |\   __  \ |\   _ \  _   \ |\  ___ \     ',
	\'  \ \  \    \ \  \\ \   __/  \ \  \     \ \  \___| \ \  \ \  \\ \  \ \__\ \  \\ \   __/     ',
	\'   \ \  \  __\ \  \\ \  \   __\ \  \     \ \  \     \ \  \ \  \\ \  \ |__| \  \\ \  \   __   ',
	\'    \ \  \|\__\_\  \\ \  \_|  \\ \  \____ \ \  \_____\ \  \_\  \\ \  \    \ \  \\ \  \_|  \   ',
	\'     \ \____________\\ \_______\\ \_______\\ \_______\\ \_______\\ \__\    \ \__\\ \_______\  ',
	\'      \|____________| \|_______| \|_______| \|_______| \|_______| \|__|     \|__| \|_______|  ',
	\'',
	\'',
	\]
