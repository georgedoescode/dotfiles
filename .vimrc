" Vim-Plug
call plug#begin('~/.vim/plugged')
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'https://github.com/pangloss/vim-javascript.git'
Plug 'jiangmiao/auto-pairs'
Plug 'Yggdroot/indentLine'
Plug 'itchyny/lightline.vim'
Plug 'https://github.com/scrooloose/nerdtree.git'
Plug 'https://github.com/scrooloose/nerdcommenter.git'
call plug#end()

" Theme
set termguicolors
syntax on
color dracula

" Spaces not tabs plz
set tabstop=2
set shiftwidth=2

" Backspace wrap
set bs=2

" Line numbers
set number

" Show lightline
set laststatus=2

let g:lightline = {
  \'colorscheme': 'dracula'
\}

" Auto open Nerdtree cause im not l33t enought yet
autocmd vimenter * NERDTree
" Autoclose nerdtree if it is the last remaining window
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd! VimEnter * NERDTree | wincmd w
