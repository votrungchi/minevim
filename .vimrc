set encoding=utf-8
autocmd BufWritePre * :%s/\s\+$//e
"autocmd vimenter * NERDTree
set tabstop=4
set nu
execute pathogen#infect()
syntax on
color dracula
set hlsearch
set colorcolumn=80
"set expandtab
"filetype plugin indent on
set listchars=tab:>-,trail:~,extends:>,precedes:<
set list
