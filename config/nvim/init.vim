syntax on

set tabstop=2
set shiftwidth=2
set expandtab
set ai
set hlsearch
set ruler
set backspace=2
set number relativenumber

filetype plugin indent on
filetype detect

call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'kien/ctrlp.vim'
Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
call plug#end()

let g:ctrlp_show_hidden = 1

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gi <Plug>(coc-implementation)

autocmd FileType make set noexpandtab
autocmd FileType php set expandtab ts=4 sw=4 

colorscheme gruvbox
