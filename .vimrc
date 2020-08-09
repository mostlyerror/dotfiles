map ; :

call plug#begin('~/.vim/plugged')

Plug 'ctrlpvim/ctrlp.vim'
Plug 'junegunn/vim-easy-align'
Plug 'preservim/nerdtree'
Plug 'elixir-editors/vim-elixir'

call plug#end()

" CTRL P
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" NERD Tree
map <C-n> :NERDTreeToggle<CR>

" move between panes with arrow keys
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" show line numbers
set number

" change bg color of highlighted search terms
set hlsearch
hi Search ctermbg=LightYellow
hi Search ctermfg=DarkCyan
