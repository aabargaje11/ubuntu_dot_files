syntax on

set number
set hidden                              " Required to keep multiple buffers open multiple buffers
set ruler
set relativenumber
set nohlsearch
set autoindent
set smartindent
set expandtab
set tabstop=2
set shiftwidth=2
" set mouse=a
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set noshowmode
set formatoptions-=cro                  " Stop newline continution of comments
set clipboard+=unnamedplus               " Copy paste between vim and everything else
set noswapfile
set nobackup
set undodir=~/.config/nvim/undodir
set undofile
set termguicolors
set scrolloff=8
set iskeyword+=-                      	" treat dash separated words as a word text object
set encoding=UTF-8

let mapleader = " "
