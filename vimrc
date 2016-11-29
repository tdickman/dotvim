" Fugitive
call pathogen#infect()
call pathogen#helptags()

" vim-flake8
source ~/.vim/bundle/flake8/ftplugin/python_flake8.vim
let g:flake8_max_line_length=1000
autocmd BufWritePost *.py call Flake8()

set shiftwidth=4
set ts=4
set expandtab
set term=builtin_ansi

filetype plugin indent on
syntax on
set background=dark
colorscheme Monokai

" Nerdtree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

map <C-n> :NERDTreeToggle<CR>
map <Leader>n <plug>NERDTreeTabsToggle<CR>

let g:nerdtree_tabs_open_on_console_startup=1
