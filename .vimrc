set nocompatible
syntax on
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugin 'jamessan/vim-gnupg' " It get a lot of warning when I try to open -
" gpg file and I don't want decrypt them
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
nmap <leader>w :wincmd k<CR>       " go window up
nmap <leader>s :wincmd j<CR>       " go window down
nmap <leader>z :wincmd h<CR>       " go window left
nmap <leader>x :wincmd l<CR>       " go window right
nmap <leader>v :vertical :new<CR>  " open new vertical window
nmap <leader>h :new<CR>            " open a new horizontal window
nmap <C-q> :q<CR>                  " it doesn't work and I don't know the reason =/
nmap <C-s> :w<CR>                  " it save the current file by pressing CTRL+S

:set cpoptions+=n
:set number
:set cpoptions+=n
:highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=235 gui=NONE guifg=NONE guibg=NONE
