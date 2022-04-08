""" Personal configuration for present user

"resets leader from / to <
let mapleader = "<"

set number
set relativenumber
set noerrorbells
set novisualbell

set wrap
set linebreak

set showbreak=+++

set textwidth=100
set showmatch

set hlsearch
set smartcase
set ignorecase
set incsearch "find the next match as we type the search

set autoindent
set shiftwidth=4
set smartindent
set smarttab
set softtabstop=4
set scrolloff=5
set ruler
set equalalways "window split equally
syntax enable

"colorscheme molokai
hi Normal guibg = NONE ctermbg = NONE
set undolevels=1000
set backspace=indent,eol,start

"for lightline statuline
set laststatus=2
"set noshowmode

"enables cursorline, disabling it by pressing \c + Enter and changes its
"colors
hi CursorLine cterm=underline term=underline ctermbg=NONE guibg=black
hi CursorLineNR cterm=underline term=underline ctermfg=green guibg=NONE
set cursorline!
nnoremap <Leader>c :set cursorline!<CR>

"clear permanent highlights
nnoremap<Leader>n :noh<CR>

set encoding=utf-8 "makes it possible to see glyphs

autocmd BufWinLeave *.* mkview
autocmd BufWinLeave *.* silent loadview

""" Plugins 

"" Example Plug Syntax, it's also possible to mention only username/repository
"Plug 'https://github.com/junegunn/vim-github-dashboard.git'

call plug#begin()

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
Plug 'ekalinin/dockerfile.vim'

call plug#end()

"""Customization of plugins

""  vim-airline
"let g:airline_theme='behelit'

"" NERDTree
nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <leader>a :NERDTreeToggle<CR>

"Opens NERDTree automatically if no files are specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif

"Exits Vim automatically if only one window is open
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
