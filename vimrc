execute pathogen#infect()
let g:ctrlp_follow_symlinks=1
let g:ctrlp_working_path_mode=0
let mapleader=","
set nocompatible
set encoding=utf-8
set showcmd                      " display incomplete command
set ttyfast                      " optimize for fast terminal
set lazyredraw                   " dont redraw during macros

set directory=~/.vim/tmp//,/tmp  " temp directory
filetype plugin indent on        " load file type plugins + indentation

set clipboard=unnamed            " Use system clipboard (compiled with +clipboard)

"" Solarized
let g:solarized_menu=0
set background=dark
colorscheme solarized

"" Style
syntax enable
"" set guifont=Anonymice\ Powerline:h14
set guifont=Sauce\ Code\ Powerline:h12
set linespace=2
set antialias
set synmaxcol=1024               " don't try to highlight really long lines
let g:airline_powerline_fonts = 1

"" Whitespace
set wrap                        " wrap lines
set tabstop=4 shiftwidth=4      " a tab is two spaces (or set this to 4)
set expandtab                   " use spaces, not tabs (optional)
set backspace=indent,eol,start  " backspace through everything in insert mode

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter
set gdefault                    " have :s///g flag by default on
set history=1000                " remember more commands and search history
set undolevels=1000             " use many muchos levels of undo
let g:ctrlp_user_command = {
  \ 'types': {
    \ 1: ['.git', 'cd %s && git ls-files --cached --exclude-standard --others']
    \ },
  \ 'fallback': 'find %s -type f'
  \ }

"" Invisible characters
set list                        " show invisible characters
set listchars=tab:▸\ ,trail:•,extends:❯,precedes:❮,eol:¬
set showbreak=↪\ 

set number                      " show line numbers
set scrolloff=4                 " keep 4 lines off the edges of the screen when scrolling
set hidden                      " allow files to be hidden in buffer
set autoread                    " reload externally edited files

"" Status line
set laststatus=2

"" Show Cursorline
set cursorline

"" F2 to trim trailing whitespace
map <F2> :%s/\s\+$//g
"" F3 to trim empty lines
map <F3> :%s/^\s*\n//g
"" F4 to trim trailing whitespace and empty lines
map <F4> :%s/\s\+$//g <bar> %s/^\s*\n//g

autocmd BufRead,BufNewFile  *.tt,*.TT set filetype=HTML
