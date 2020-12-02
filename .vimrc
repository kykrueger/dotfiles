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

" netrw
let g:netrw_liststyle = 3
let g:netrw_banner = 0
" Per default, netrw leaves unmodified buffers open. This autocommand
" deletes netrw's buffer once it's hidden (using ':q', for example)
autocmd FileType netrw setl bufhidden=delete


" local directory of active file
cnoremap <expr> %% getcmdtype() == ':' ?  expand('%:h').'/' : '%%'

" global config for YouCompleteMe python
let g:ycm_python_interpreter_path = '~/anaconda3/envs/sandbox'
let g:ycm_python_sys_path = []
let g:ycm_extra_conf_vim_data = [
  \  'g:ycm_python_interpreter_path',
  \  'g:ycm_python_sys_path'
  \]
let g:ycm_global_ycm_extra_conf = '~/global_extra_conf.py'

" configuration for vim-pandoc and vim-rmarkdown
let g:pandoc#modules#disabled = ["folding", "spell"]
let g:pandoc#syntax#conceal#use = 0
