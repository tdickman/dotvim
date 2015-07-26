" Fugitive
call pathogen#infect()
call pathogen#helptags()

" vim-flake8
source ~/.vim/bundle/flake8/ftplugin/python_flake8.vim
let g:flake8_max_line_length=240
autocmd BufWritePost *.py call Flake8()

set shiftwidth=4
set ts=4
set expandtab
set term=builtin_ansi

filetype plugin indent on
syntax on
set background=dark
colorscheme monokai
