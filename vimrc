" Fugitive
call pathogen#infect()
call pathogen#helptags()

" vim-flake8
source ~/.vim/bundle/flake8/ftplugin/python_flake8.vim
autocmd BufWritePost *.py call Flake8()

set shiftwidth=4
set ts=4
set expandtab
