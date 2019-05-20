" Vim-Plug
call plug#begin('~/.vim/plugged')
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'https://github.com/pangloss/vim-javascript.git'
Plug 'mxw/vim-jsx'
Plug 'jiangmiao/auto-pairs'
Plug 'Yggdroot/indentLine'
Plug 'itchyny/lightline.vim'
Plug 'https://github.com/scrooloose/nerdtree.git'
Plug 'https://github.com/scrooloose/nerdcommenter.git'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'w0rp/ale'
Plug 'https://github.com/hail2u/vim-css3-syntax.git'
Plug 'https://github.com/Valloric/YouCompleteMe.git'
Plug 'mattn/emmet-vim'
Plug 'prettier/vim-prettier', { 'do': 'npm install' }
call plug#end()

" Theme
set termguicolors
syntax on
colorscheme dracula 

" Spaces not tabs plz
set tabstop=2
set shiftwidth=2
set expandtab                
set autoindent 
set smartindent

" For certain css keywords
augroup VimCSS3Syntax
  autocmd!
  autocmd FileType css setlocal iskeyword+=-
augroup END

" Backspace wrap
set bs=2

" Line numbers
set number

" Show lightline
set laststatus=2

let g:lightline = {
  \'colorscheme': 'dracula'
\}

" Italic comments 
highlight Comment cterm=italic gui=italic

let g:ale_fixers = {
\   'javascript': ['prettier'],
\   'css': ['prettier'],
\   'html': ['prettier']
\}

let g:ale_fix_on_save = 1

let g:ycm_autoclose_preview_window_after_completion = 1

" Auto open Nerdtree cause im not l33t enought yet
autocmd vimenter * NERDTree
" Autoclose nerdtree if it is the last remaining window
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd! VimEnter * NERDTree | wincmd w

" Store tmp files in a sensible location 
set backupdir=/tmp//
set directory=/tmp//
set undodir=/tmp//
