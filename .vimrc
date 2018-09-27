set encoding=utf-8
autocmd BufWritePre * :%s/\s\+$//e
"autocmd vimenter * NERDTree
set tabstop=4
set nu
execute pathogen#infect()
syntax on
"color dracula
set hlsearch
set colorcolumn=80
"set expandtab
"filetype plugin indent on

"Show all symbol characters
"set listchars=tab:>-,trail:~,extends:>,precedes:<
"set list

"Underline the current line
set cursorline

"Most likely, the "problem" you're seeing is that you can't delete anything
"that was not typed during your current insert mode session.
"This is due to the default setting for the 'backspace' option.
set backspace=indent,eol,start
