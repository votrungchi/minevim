autocmd BufWritePre *.py :%s/\s\+$//e
"autocmd vimenter * NERDTree
set tabstop=4
execute pathogen#infect()
syntax on
set hlsearch
filetype plugin indent on
