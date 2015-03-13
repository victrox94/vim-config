set nocompatible
syntax on
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'jamessan/vim-gnupg'
Plugin 'tpope/vim-pathogen'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'

" Status bar plugin
Plugin 'bling/vim-airline'
let g:airline_left_sep = ''
let g:airline_right_sep = ''

call vundle#end()            " required
filetype plugin indent on    " required

set encoding=utf8
set background=dark
set ffs=unix,dos,mac
set modeline
set expandtab
set smarttab
set backspace=indent,eol,start
set laststatus=2

let mapleader=","
map <F2> :NERDTreeToggle<CR>
map <leader>t :CtrlP<CR>
nmap <leader>a :wincmd k<CR>  " go window up
nmap <leader>s :wincmd j<CR>  " go window down
nmap <leader>z :wincmd h<CR>  " go window left
nmap <leader>x :wincmd l<CR>  " go window right
nmap <C-q> :q<CR>  " it doesn't work and I don't know the reason =/
nmap <C-s> :w<CR>

:set cpoptions+=n
:set relativenumber
:set cpoptions+=n
:highlight LineNr term=bold cterm=NONE ctermfg=White ctermbg=DarkYellow gui=NONE guifg=NONE guibg=NONE
