"""""""" PLUGINS """"""""""""
set nocompatible
filetype off

set rtp+=$HOME/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'dikiaap/minimalist'
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'lervag/vimtex'
Plugin 'mattn/webapi-vim'
Plugin 'mattn/gist-vim'
Plugin 'godlygeek/tabular'
"Plugin 'plasticboy/vim-markdown'
Plugin 'dhruvasagar/vim-table-mode'
call vundle#end() 
filetype plugin indent on 
""""""""""""""""""""""""""""""

" enable syntax and plugins
syntax enable
filetype plugin indent on

" Colorscheme
"colorscheme molokai
colorscheme minimalist
let g:airline_theme='minimalist'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" Use mouse
set mouse=a

" line numbers
set number

" highlight search results
set hlsearch

" Show matching brackets when text indicator is over them
set showmatch

" Start scrolling slightly before the cursor reaches an edge
set scrolloff=5
set sidescrolloff=3

" leader keys
let mapleader = ","
let g:mapleader = ","

" Pressing ,ss will toggle and untoggle spell checking
map <leader>ss :setlocal spell!<cr>
setlocal spelllang=nl

" Smaller tabs
set shiftwidth=4
set softtabstop=4

" Better soft wrap lines
set wrap
set linebreak

" move normally in soft wraped lindes
noremap  <buffer> <silent> k gk
noremap  <buffer> <silent> j gj
noremap  <buffer> <silent> 0 g0
noremap  <buffer> <silent> $ g$

set t_Co=256
syntax on
set encoding=utf-8
set guifont=Hack

" show incomplete commands in bottom right corner
set showcmd


" Show list instead of just completing
set wildmenu
set wildmode=longest:full,full


" Ignore case, except when using upper-case letters in search pattern
set ignorecase
set smartcase

" Highlight current horizontal line
set cursorline

" Airline
set laststatus=2
let g:airline_powerline_fonts = 1

" Synctex support
let g:latex_view_general_viewer = 'zathura'
let g:vimtex_view_method = 'zathura'
let g:vimtex_complete_close_braces = 1

" Markdown compatible tables
let g:table_mode_corner_corner='+'
let g:table_mode_header_fillchar='='

" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %
