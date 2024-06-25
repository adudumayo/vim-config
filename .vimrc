" General settings
syntax on
set number
set relativenumber
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent

" Initialize vim-plug
call plug#begin('~/.vim/plugged')

" Plugin manager itself
Plug 'junegunn/vim-plug'

" Language Server Protocol (LSP) for enhanced IDE-like features
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Java development plugin for CoC
Plug 'neoclide/coc-java'

" File explorer
Plug 'preservim/nerdtree'

" Syntax highlighting
Plug 'sheerun/vim-polyglot'

" Status line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" End plugin installation
call plug#end()

" NERDTree settings
map <C-n> :NERDTreeToggle<CR>

" CoC settings
let g:coc_global_extensions = ['coc-java']

" Quiting without saving settings
map <C-q> :q!<CR>

" Writing and then quiting
map <C-s> :wq<CR>
