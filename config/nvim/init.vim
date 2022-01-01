syntax on

set tabstop=2
set shiftwidth=2
set expandtab
set ai
set hlsearch
set ruler
set backspace=2
set relativenumber
set nu rnu

filetype plugin indent on
filetype detect

highlight Comment ctermfg=green

call plug#begin('~/.vim/plugged')
Plug 'kien/ctrlp.vim'
Plug 'arnaud-lb/vim-php-namespace'
Plug 'preservim/nerdtree'
call plug#end()

function! IPhpInsertUse()
    call PhpInsertUse()
    call feedkeys('a',  'n')
endfunction

autocmd FileType php inoremap <Leader>u <Esc>:call IPhpInsertUse()<CR>
autocmd FileType php noremap <Leader>u :call PhpInsertUse()<CR>

let g:ctrlp_show_hidden = 1

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

autocmd FileType make set noexpandtab
autocmd FileType php set expandtab ts=4 sw=4 

