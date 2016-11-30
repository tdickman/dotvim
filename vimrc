" Fugitive
call pathogen#infect()
call pathogen#helptags()

set shiftwidth=4
set ts=4
set expandtab
set term=builtin_ansi

filetype plugin indent on
syntax on
set background=dark
colorscheme Monokai
let mapleader = ','

" Nerdtree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

map <C-n> :NERDTreeToggle<CR>
map <Leader>n <plug>NERDTreeTabsToggle<CR>

let g:nerdtree_tabs_open_on_console_startup=1

set statusline=%f\ %{fugitive#statusline()}
set mouse=a
set ttymouse=xterm2
set number
let NERDTreeIgnore = ['__pycache__']
set splitright

" Map function keys to tabs
map <Esc>OP :tabn1<CR>
map <Esc>OQ :tabn2<CR>
map <Esc>OR :tabn3<CR>
map <Esc>OS :tabn4<CR>
map <Esc>[16~ :tabn5<CR>
map <Esc>[17~ :tabn6<CR>
map <Esc>[18~ :tabn7<CR>
map <Esc>[19~ :tabn8<CR>
map <Esc>[20~ :tabn9<CR>
map <Esc>[21~ :tabn10<CR>
map <Esc>[23~ :tabn11<CR>
map <Esc>[24~ :tabn12<CR>
map ¡ :tabmove 0<CR>
map ™ :tabmove 1<CR>
map £ :tabmove 2<CR>
map ¢ :tabmove 3<CR>

" Blank current pane
command B bp|sp|bn|bd

" Syntastic python3
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_python_exec = '/Library/Frameworks/Python.framework/Versions/3.5/bin/python3'
let g:syntastic_python_checkers=['flake8']
let g:syntastic_python_flake8_args='--ignore=E501,E225'
