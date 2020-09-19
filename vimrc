if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
	\https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall  --sync | source $MYVIMRC
endif

"specify a directory for plugins, but avoid using the standard vim directory names
call plug#begin('~/.vim/plugged')

"from here on, to add a plugin: Plug[name]. It's possible to write down more plugins in one
"line, but | is needed
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'dense-analysis/ale'
Plug 'itchyny/lightline.vim'
Plug 'valloric/youcompleteme'

call plug#end()

"resets Leader from / to <
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

colorscheme molokai
hi Normal guibg = NONE ctermbg = NONE
set undolevels=1000
set backspace=indent,eol,start

"for lightline statusline
set laststatus=2
set noshowmode

"enables cursorline, disabling it by pressing \c + Enter and changes its colors
hi CursorLine cterm=underline term=underline ctermbg=NONE guibg=black
hi CursorLineNR cterm=underline term=underline ctermfg=green guibg=NONE
set cursorline!
nnoremap <Leader>c :set cursorline!<CR>

"clear permanent highlights
nnoremap <Leader>n :noh<CR>

set encoding=utf-8 "makes it possible to see glyphs 

autocmd BufWinLeave *.* mkview
autocmd BufWinLeave *.* silent loadview
