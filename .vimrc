map ; :

call plug#begin('~/.vim/plugged')
Plug 'ctrlpvim/ctrlp.vim'
Plug 'junegunn/vim-easy-align'
Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
" Plug 'elixir-editors/vim-elixir'
Plug 'tmhedberg/SimpylFold'
" Plug 'vim-scripts/indentpython.vim'
" Plug 'nvie/vim-flake8'
Plug 'tpope/vim-surround'
Plug 'artanikin/vim-synthwave84'
Plug 'tpope/vim-fugitive'
call plug#end()

let g:SimpylFold_docstring_preview=1


filetype plugin on

" NerdCommenter
"
" Add spaces after comment delimiters
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Align line-wise comment delimiters flush left instead of following code indentation
" let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
" let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
" let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
" let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not
" let g:NERDToggleCheckAllLines = 1



" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

" NERDTree
map <C-n> :NERDTreeToggle<CR>

set splitbelow
set splitright


" Enable folding
set foldmethod=indent
set foldlevel=99
" Enable folding with the spacebar
nnoremap <space> za



" move between panes with arrow keys
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" change bg color of highlighted search terms
set hlsearch
hi Search ctermbg=LightYellow
hi Search ctermfg=DarkCyan



" configure expanding of tabs for various file types
au BufRead,BufNewFile *.c set noexpandtab
au BufRead,BufNewFile *.h set noexpandtab
au BufRead,BufNewFile Makefile* set noexpandtab
" 
" au BufNewFile,BufRead *.py, *.rb
"     \ set tabstop=4
"     \ set softtabstop=4
"     \ set shiftwidth=4
"     \ set textwidth=79
"     \ set expandtab
"     \ set autoindent
"     \ set fileformat=unix

let python_highlight_all=1

" au BufNewFile,BufRead *.js, *.html, *.css
" set tabstop=2
" set softtabstop=2
" set shiftwidth=2

autocmd FileType html setlocal ts=2 sts=2 sw=2
autocmd FileType ruby setlocal ts=2 sts=2 sw=2
autocmd FileType javascript setlocal ts=2 sts=2 sw=2

au BufNewFile,BufRead *.py
  \ set tabstop=4
  \ set softtabstop=4
  \ set shiftwidth=4
  \ set textwidth=79

set encoding=utf-8
set number                          " show line numbers
set ruler                           " show line and column number

syntax on               " syntax highlighting
set showcmd             " show (partial) command in status line

" colorscheme synthwave84
" " run ruby code using leader-r only when inside a .rb file
au BufRead, *.rb nmap <leader>r :!ruby %<cr>
