set encoding=utf-8
autocmd BufWritePre * :%s/\s\+$//e
"autocmd vimenter * NERDTree
set tabstop=4
set nu
execute pathogen#infect()

let g:dracula_italic = 0
syntax on
color space-vim-dark

hi Search guibg=blue guifg=black
hi Search cterm=NONE ctermfg=black ctermbg=blue
set hlsearch
set colorcolumn=80

set expandtab
"filetype plugin indent on

"Show all symbol characters
set showbreak=↪\
set listchars=tab:→\ ,eol:↲,nbsp:␣,trail:•,extends:⟩,precedes:⟨
set list

"Underline the current line
set cursorline

"Most likely, the "problem" you're seeing is that you can't delete anything
"that was not typed during your current insert mode session.
"This is due to the default setting for the 'backspace' option.
set backspace=indent,eol,start

"Quickfix window commands respect the switchbuf option when opening a buffer.
set switchbuf+=usetab,newtab

" Setting global YCM's config (C++)
" Copy .vim/.ycm_extra_conf.py to your project folder,
" then update and uncomment the cmd below:
" let g:ycm_extra_conf_globlist = 'path/to/your/project/'

" Load ycm conf by default
let g:ycm_confirm_extra_conf=0
