set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

Plugin 'jpo/vim-railscasts-theme'
Plugin 'scrooloose/nerdtree'
"Plugin 'itmammoth/doorboy.vim'

call vundle#end()            " required
filetype plugin indent on    " required

syntax on 
colorscheme railscasts
set number
set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set expandtab       " tabs are spaces
set showcmd             " show command in bottom bar
set cursorline          " highlight current line
set wildmenu            " visual autocomplete for command men
set showmatch           " highlight matching [{()}]
set incsearch           " search as characters are entered
set hlsearch            " highlight matches

set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting
set number        " always show line numbers
set shiftwidth=4  " number of spaces to use for autoindenting
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
"set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase,
                    "    case-sensitive otherwise
                    "    set smarttab      " insert tabs on the start of a
                    "    line according to
                    "                        "    shiftwidth, not tabstop
                    "                        set hlsearch      " highlight
                    "                        search terms
                    "                        set incsearch     " show search
                    "                        matches as you type
                    "

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

                    
                    "inoremap { {<CR>}<Esc>ko

"inoremap ( ()<Esc>i
set undolevels=1000      " use many muchos levels of undo
set nobackup
set noswapfile
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif

"navigation
"
"set list
"set listchars=tab:>.,trail:.,extends:#,nbsp:.
"set mouse=a

nnoremap <space> :nohlsearch<CR>
nnoremap gV `[v`]
