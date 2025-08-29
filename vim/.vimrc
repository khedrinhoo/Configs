
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab

set number
set relativenumber

set autoindent
set autoread

set hlsearch
set ignorecase
set incsearch 

set clipboard=unnamedplus

syntax on
colorscheme jellybeans
set background=dark

command! FZFBOTH call fzf#run({ 'source': 'find ~/Personal ~/Work -type f', 'sink': 'edit' })

let mapleader = "\<Space>"
noremap <Leader>q :q<CR>
noremap <Leader>w :w<CR>
noremap <Leader>e :Ex<CR>
noremap <Leader>f :FZFBOTH<CR>

call plug#begin('~/.vim/plugged')

Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

call plug#end()
