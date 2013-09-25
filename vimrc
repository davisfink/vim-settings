execute pathogen#infect()
syntax enable
set encoding=utf-8
set showcmd                     " display incomplete commands
filetype plugin indent on       " load file type plugins + indentation
set lazyredraw
set directory=~/.vim/tmp//,/tmp

"" Style
set guifont=Source\ Code\ Pro\ Light:h14
set linespace=2
set background=dark
colorscheme solarized
set synmaxcol=200               " don't try to highlight long lines

"" Whitespace
set nowrap                      " don't wrap lines
set tabstop=2 shiftwidth=2      " a tab is two spaces (or set this to 4)
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

"" Invisible characters
set list                        " show invisible characters
set listchars=tab:▸\ ,trail:•,extends:❯,precedes:❮,eol:¬
set showbreak=↪\ 

set number                      " show line numbers
set scrolloff=4                 " keep 4 lines off the edges of the screen when scrolling
set hidden                      " allow files to be hidden in buffer
set autoread                    " reload externally edited files

set laststatus=2
set statusline=
set statusline+=%1*\[%n]                               "buffernr
set statusline+=\ %<%f\                                "File+path
set statusline+=\ %=\ row:%l/%L\ (%03p%%)\             "Rownumber/total (%)
set statusline+=\ col:%03c\                            "Colnr
set statusline+=\ \ %m%r%w\ %P\ \                      "Modified? Readonly? Top/bot.

hi User1 guifg=#657b83  guibg=#094454

let mapleader=","
