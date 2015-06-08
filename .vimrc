set nocompatible
syntax on
filetype off

set directory=~/my-tmp/
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugin 'jamessan/vim-gnupg' " It get a lot of warning when I try to open -
" gpg file and I don't want decrypt them
Plugin 'tpope/vim-pathogen'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'mileszs/ack.vim'

" Status bar plugin
Plugin 'bling/vim-airline'
let g:airline_left_sep = ''
let g:airline_right_sep = ''

call vundle#end()            " required
filetype plugin indent on    " required

call pathogen#infect()

" Few configurations:
set hlsearch " Highlight search results
set encoding=utf8
set background=dark
set ffs=unix,dos,mac
set modeline
set autoindent
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
set backspace=indent,eol,start
set laststatus=2
set cpoptions+=n
set number
set vb
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=235 gui=NONE guifg=NONE guibg=NONE

" CtrlP to ignore
set wildignore+=*.swp,*.pyc
let g:ctrlp_show_hidden = 1

" NerdTree show hidden files
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.swp$', '\.pyc$']

" Short cuts:
let mapleader=","
map <F2> :NERDTreeToggle<CR>
map <F3> :Ack 
map <F4> :CtrlPClearAllCaches<CR>   " clear all CtrlP cache
map <F5> :e!<CR>                    " force reload current file
map <F6> <C-w><                     " decrease width
map <F7> <C-w>>                     " increase width
map <F8> <C-w>+                     " decrease height
map <F9> <C-w>-                     " increase height
map <F10> :NERDTreeFind<CR>         " Open NERDTree and focus on current file
map <leader>t :CtrlP<CR>
nmap <leader>w :wincmd k<CR>        " go window up
nmap <leader>s :wincmd j<CR>        " go window down
nmap <leader>z :wincmd h<CR>        " go window left
nmap <leader>x :wincmd l<CR>        " go window right
nmap <leader>v :vertical :new<CR>   " open new vertical window
nmap <leader>h :new<CR>             " open a new horizontal window
" nmap <leader>a :qa<CR>              " it quit all vim buffers
nmap <leader>A :qa!<CR>             " it force quit all vim buffers
nmap <leader>n :tabnew<CR>          " create a new tab
nmap <leader><tab> :tabnext<CR>     " move to next tab
nmap <C-q> :q<CR>                   " close the current window
nmap <C-s> :w<CR>                   " it save the current file by pressing CTRL+S
nmap <C-a> G $ v gg  " *** VERIFY THIS LATER

