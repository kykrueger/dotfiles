" https://github.com/tpope/vim-pathogen
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect() 

syntax on
set nocompatible
filetype plugin indent on

set history=200
set nrformats-=octal " treat octal formatted numbers as decimal values
set number
set relativenumber

set path+=**
set wildmenu
set tags=tags;/


" local directory of active file
cnoremap <expr> %% getcmdtype() == ':' ?  expand('%:h').'/' : '%%'
