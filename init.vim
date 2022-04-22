source $HOME/.config/nvim/plug-config/coc.vim
" source $HOME/.config/nvim/plug-config/neovide.vim
source $HOME/.config/nvim/plug-config/signify.vim
" source $HOME/.config/nvim/plug-config/start-screen.vim
source $HOME/.config/nvim/plug-config/fzf.vim
source $HOME/.config/nvim/plug-config/nerdtree.vim
source $HOME/.config/nvim/plug-config/vimtex.vim
source $HOME/.config/nvim/plug-config/ultisnips.vim
source $HOME/.config/nvim/plug-config/treesitter.vim
source $HOME/.config/nvim/plug-config/colorschemes.vim
source $HOME/.config/nvim/plug-config/dashboard.vim
" source $HOME/.config/nvim/plug-config/goyo.vim

set runtimepath ^=~.vim runtimepath +=~/.vim/after
let &packpath = &runtimepath
" --- set language
nnoremap <SPACE> <Nop>
" let mapleader= <space>
map <Space> <Leader>
" let mapleader=" "
set langmenu=en_US.UTF-8
set encoding=UTF-8
set mouse=a

" --- syntax Highlighting
syntax on

filetype off
filetype plugin indent on
set nocompatible
set tabstop=4 softtabstop=4
set shiftwidth=4
set incsearch
set smartcase
set nu
set noswapfile
set nobackup
set undofile
set autochdir
set termguicolors

" --- python path
" set pythonthreehome=c:\\Users\\kriso\\AppData\\Local\\Programs\\Python\\Python310-32
" set pythonthreedll=c:\\Users\\kriso\\AppData\\Local\\Programs\\Python\\Python310-32\\python310.dll

" --- change default split
set splitbelow
set splitright

" --- disable folding
set nofoldenable
set foldmethod=indent

set backspace=indent,eol,start

" --- turn off error bells
set noerrorbells visualbell t_vb=

" let python_highlight_all=1
au GUIEnter * set visualbell t_vb=

set rtp+=$HOME/.vim/bundle/Vundle.vim

call vundle#begin()

	Plugin 'lervag/vimtex'											" --- vimtex
	Plugin 'tmsvg/pear-tree'										" --- pear-tree
	Plugin 'nvie/vim-flake8'										" --- flake8
	Plugin 'sirver/ultisnips'										" --- ultisnips
	Plugin 'junegunn/fzf.vim'										" --- fzf.vim
	Plugin 'mhinz/vim-signify'										" --- signify
	Plugin 'tpope/vim-rhubarb'										" --- rhubarb
	Plugin 'tpope/vim-surround'										" --- surround
	Plugin 'github/copilot.vim'										" --- copilot
	Plugin 'honza/vim-snippets'										" --- vim-snippets
	Plugin 'tpope/vim-fugitive'										" --- fugitive
	Plugin 'scrooloose/nerdtree'									" --- nerdtree
	Plugin 'tmhedberg/SimpylFold'									" --- SimpylFold
	Plugin 'VundleVim/Vundle.vim'									" --- vundle
	Plugin 'joshdick/onedark.vim'									" --- onedark
	Plugin 'tpope/vim-commentary'									" --- commentary
	Plugin 'frazrepo/vim-rainbow'									" --- rainbow parentheses
	Plugin 'glepnir/dashboard-nvim'									" --- dashboard-nvim
	Plugin 'ryanoasis/vim-devicons'									" --- devicons
	Plugin 'vim-syntastic/syntastic'								" --- syntastic
	Plugin 'vim-airline/vim-airline'								" --- vim-airline
	Plugin 'norcalli/nvim-colorizer.lua'							" --- nvim-colorizer.lua
	Plugin 'terryma/vim-multiple-cursors'							" --- multiple-cursors
	Plugin 'vim-scripts/indentpython.vim'							" --- indentpython
	Plugin 'sonph/onehalf', {'rtp': 'vim'}							" --- onehalf
	Plugin 'vim-airline/vim-airline-themes'							" --- vim-airline-themes
	Plugin 'dracula/vim', {'name':'dracula'}						" --- dracula
	Plugin 'junegunn/fzf', {'do': ':FZFInstall'}					" --- fzf
	Plugin 'mhinz/vim-startify', {'branch':'center'}				" --- startify
	Plugin 'neoclide/coc.nvim', {'branch': 'release'}				" --- coc.nvim
	Plugin 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}	" --- treesitter
	Plugin 'rafi/awesome-vim-colorschemes'							" --- awesome-vim-colorscheme
	Plugin 'junegunn/goyo.vim'										" --- goyo
	Plugin 'jremmen/vim-ripgrep'									" --- ripgrep

call vundle#end()

" --- set colorscheme
set t_Co=256
colorscheme onedark
lua require'colorizer'.setup()

" --- disable arrowkeys
noremap <Up>    <Nop>
noremap <Down>  <Nop>
noremap <Left>  <Nop>
noremap <Right> <Nop>

" --- more intuitive splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" --- Additional mapping for esc
imap jj <ESC>

nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" --- enable rainbow parentheses
" let g:rainbow_active = 1
au FileType c,cpp,py,vb,java,vb call rainbow#load()

" --- always show tabs
set showtabline=2
set noshowmode

" --- tab out of parentehes
" inoremap <expr> <Tab> search('\%#[]>)}]', 'n') ? '<Right>' : '<Tab>'

