set nocompatible              " be iMproved, required
filetype off                  " required
syntax on
set encoding=utf-8

let base16colorspace=256  " Access colors present in 256 colorspace

" go mode
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_metalinter_autosave = 1

autocmd FileType dafny set tabstop=2 softtabstop=0 expandtab shiftwidth=2 smarttab 
autocmd FileType ocaml set tabstop=2 softtabstop=0 expandtab shiftwidth=2 smarttab 

let g:go_fmt_command = "goimports"

let g:go_metalinter_autosave_enabled = ['vet', 'golint']

" set the runtime path to include Vundle and initialize

call plug#begin('~/.vim/plugged')
Plug 'ctrlpvim/ctrlp.vim'
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'powerline/powerline-fonts'
Plug 'chriskempson/base16-vim'
Plug 'vim-airline/vim-airline-themes'
Plug 'mlr-msft/vim-loves-dafny', {'for': 'dafny'}
Plug 'vim-scripts/LaTeX-Suite-aka-Vim-LaTeX'
call plug#end()

filetype plugin indent on    " required

colorscheme base16-ocean

" merlin for ocaml
let g:opamshare = substitute(system('opam config var share'),'\n$','','''')
execute "set rtp+=" . g:opamshare . "/merlin/vim"

" latex
let g:tex_flavor='latex'

