"""""""" PLUGINS """"""""""""
set nocompatible
filetype off

set rtp+=$HOME/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'lervag/vimtex'
Plugin 'mattn/gist-vim'
Plugin 'godlygeek/tabular'
Plugin 'dhruvasagar/vim-table-mode'
Plugin 'ayu-theme/ayu-vim'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdtree'
Plugin 'Valloric/YouCompleteMe'
call vundle#end() 
filetype plugin indent on 
""""""""""""""""""""""""""""""

let g:ycm_server_python_interpreter = '/usr/bin/python'

" enable syntax and filetype detection
syntax enable
filetype plugin indent on

" Colorscheme
set termguicolors     " enable true colors support
let ayucolor="light"  " for light version of theme
colorscheme ayu
let g:airline_theme='sol'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" Enable airline
set laststatus=2

" Tagbar shortcut
nmap <F8> :TagbarToggle<CR>
nmap <F7> :NERDTreeToggle<CR>

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

" Pressing ,ss will toggle and untoggle spell checking
map <leader>ss :setlocal spell!<cr>
setlocal spelllang=nl
hi SpellBad gui=undercurl guisp=red

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

" Synctex support
let g:latex_view_general_viewer = 'okular'
let g:vimtex_view_method = 'okular'
let g:vimtex_complete_close_braces = 1

" Markdown compatible tables
let g:table_mode_corner_corner='+'
let g:table_mode_header_fillchar='='

" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %

" store swp file in home dir
set directory=$HOME/.vim/swapfiles//

