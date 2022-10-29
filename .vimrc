if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'altercation/vim-colors-solarized' " Solarized Colours
Plug 'ctrlpvim/ctrlp.vim'				" Fuzzy File Search
Plug 'davidhalter/jedi-vim'				" Bindings for Jedi autocompletion
Plug 'dense-analysis/ale'				" Asynchronous syntax checker
Plug 'jiangmiao/auto-pairs'			 	" Create closing brackets, quotes, etc.
Plug 'majutsushi/tagbar'				" ctags browser
Plug 'markonm/traces.vim'				" Search and replace preview
Plug 'ntpeters/vim-better-whitespace' 	" Whitespace cleanup
Plug 'scrooloose/nerdtree'				" File browser
Plug 'tpope/vim-fugitive'				" Git bindings
Plug 'tpope/vim-surround'				" Change surrounding quotes, brackets, etc.
Plug 'vim-airline/vim-airline'			" Status bar

call plug#end()

syntax enable
set autowrite
set background=dark
set backspace=2
set colorcolumn=80
set encoding=utf-8
set fileencoding=utf-8
set number
set shiftwidth=4
set t_ut=
set tabstop=4
filetype plugin on
colorscheme solarized

map <C-n> :NERDTreeToggle<CR>
map <C-t> :TagbarToggle<CR>

nmap <C-H> <C-W><C-H>
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-L> <C-W><C-L>

let g:ale_fix_on_save = 1
let g:ale_fixers = {
	\ 'c': ['clang-format'],
	\ 'python': ['black'],
	\ 'sh': ['shfmt'],
	\}
let g:ale_linters = {
	\ 'c': ['clang'],
	\ 'python': ['flake8', 'mypy'],
	\ 'sh': ['shellcheck'],
	\}
let g:better_whitespace_ctermcolor='white'
let g:better_whitespace_enabled=1
let g:solarized_termcolors=256
let g:strip_whitespace_confirm=0
let g:strip_whitespace_on_save=1
