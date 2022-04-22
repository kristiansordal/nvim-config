" --- nerdtree settings
cmap NT NERDTree
let NERDTreeIgnore = ['\~$','\.pyc$','\*NTUSER*','\*ntuser*','\NTUSER.DAT','\ntuser.ini']
let NERDTreeShowHidden=1

" --- autofind cwd
autocmd BufEnter *lcd %:p:h
nnoremap <leader>e :NERDTreeToggle<CR>
au bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
