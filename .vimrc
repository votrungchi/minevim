set encoding=utf-8
autocmd BufWritePre * :%s/\s\+$//e
autocmd vimenter * NERDTree

call plug#begin('~/.vim/plugins')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'xavierd/clang_complete'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'morhetz/gruvbox'
Plug 'majutsushi/tagbar'
Plug 'kien/ctrlp.vim'
Plug 'frazrepo/vim-rainbow'
call plug#end()

augroup CustomCursorLine
au!
au ColorScheme * :hi clear CursorLine
au ColorScheme * :hi CursorLine gui=underline cterm=underline
augroup END

"Underline the current line
set cursorline

set tabstop=4
set nu

syntax on
let g:gruvbox_contrast_dark = 'hard'
colorscheme gruvbox
set bg=dark

hi Search guibg=blue guifg=black
hi Search cterm=NONE ctermfg=black ctermbg=blue
set hlsearch
set colorcolumn=120

set expandtab
"filetype plugin indent on

"Show all symbol characters
"set showbreak=↪\
set listchars=tab:→\ ,eol:↲,nbsp:␣,trail:•,extends:⟩,precedes:⟨
"set list

"Most likely, the "problem" you're seeing is that you can't delete anything
"that was not typed during your current insert mode session.
"This is due to the default setting for the 'backspace' option.
set backspace=indent,eol,start

"Quickfix window commands respect the switchbuf option when opening a buffer.
set switchbuf+=usetab,newtab

let g:clang_library_path='/usr/lib/x86_64-linux-gnu/libclang-6.0.so.1'

let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline_theme = 'bubblegum'

let g:rainbow_active = 1

let g:rainbow_load_separately = [
    \ [ '*' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
    \ [ '*.tex' , [['(', ')'], ['\[', '\]']] ],
    \ [ '*.cpp' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
    \ [ '*.{html,htm}' , [['(', ')'], ['\[', '\]'], ['{', '}'], ['<\a[^>]*>', '</[^>]*>']] ],
    \ ]

let g:rainbow_guifgs = ['RoyalBlue3', 'DarkOrange3', 'DarkOrchid3', 'FireBrick']
let g:rainbow_ctermfgs = ['lightblue', 'lightgreen', 'yellow', 'red', 'magenta']



