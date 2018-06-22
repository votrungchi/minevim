set encoding=utf-8
autocmd BufWritePre * :%s/\s\+$//e
"autocmd vimenter * NERDTree
set tabstop=4
set nu
execute pathogen#infect()
syntax on
color dracula
set hlsearch
"set expandtab
"filetype plugin indent on
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
set list
