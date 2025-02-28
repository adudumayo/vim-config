" Basic settings
set number
set relativenumber
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent
set wrap
set cursorline
set clipboard=unnamedplus
set mouse=a

" General settings
syntax on
filetype plugin indent on

" Colorscheme
colorscheme desert

" Plugin manager: vim-plug
call plug#begin('~/.config/nvim/plugged')

" Plugins
Plug 'preservim/nerdtree'               " File explorer
Plug 'itchyny/lightline.vim'            " Status line
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " Fuzzy finder
Plug 'junegunn/fzf.vim'                 " Fuzzy finder integration
Plug 'neoclide/coc.nvim', {'branch': 'release'} " Intellisense engine
Plug 'airblade/vim-gitgutter'           " Git diff in the gutter
Plug 'tpope/vim-fugitive'               " Git wrapper
Plug 'dense-analysis/ale'               " Asynchronous Linting
Plug 'sheerun/vim-polyglot'             " Language packs
Plug 'scrooloose/nerdcommenter'         " Commenting utility
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'wakatime/vim-wakatime'

call plug#end()

autocmd BufNewFile *.html 0r ~/.vim/skeletons/html.tpl

" NERDTree settings
nmap <C-n> :NERDTreeToggle<CR>

" Lightline settings
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }

" CoC (Conqueror of Completion) settings
let g:coc_global_extensions = [
  \ 'coc-java',
  \ 'coc-python',
  \ 'coc-tsserver',
  \ 'coc-html',
  \ 'coc-css',
  \ ]

" Key mappings
nmap <leader>ff :Files<CR>
nmap <leader>fg :GFiles<CR>
nmap <leader>fb :Buffers<CR>
nmap <leader>fh :Helptags<CR>
nmap <C-q> :q!<CR>
nmap <C-s> :wq<CR>
nmap <C-z> :w<CR>

" GitGutter settings
let g:gitgutter_map_keys = 0

" ALE settings
let g:ale_linters_explicit = 1
let g:ale_fixers = {
\   'javascript': ['eslint'],
\   'python': ['autopep8'],
\   'java': ['google_java_format'],
\}

" Terminal settings
nmap <leader>tt :term<CR>
noremap <Esc> <C-\><C-n>
