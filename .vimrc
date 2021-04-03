"""""""""""""""""""""""""""""""""""""""""""
" Vundle setup
"""""""""""""""""""""""""""""""""""""""""""
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Yes.
Plugin 'gmarik/Vundle.vim'
" Git wrapper.
Plugin 'tpope/vim-fugitive'

call vundle#end()

filetype plugin indent on

"""""""""""""""""""""""""""""""""""""""""""
" Core editing 
"""""""""""""""""""""""""""""""""""""""""""
" Spaces instead of tabs
set expandtab
set tabstop=2

" Allow more than 10 tabs with vim -p
set tabpagemax=50

" Vertical buffer around the cursor
set scrolloff=10

" Make :tabnew blah actually do what I want
set autochdir

" Allow % and "" to match < as well
set matchpairs+=<:>

"""""""""""""""""""""""""""""""""""""""""""
" Appearance
"""""""""""""""""""""""""""""""""""""""""""
syntax on
set colorcolumn=80
set number
set background=dark
set laststatus=2

set foldmethod=syntax
set foldminlines=4
set foldlevelstart=300

"""""""""""""""""""""""""""""""""""""""""""
" Search / replace
"""""""""""""""""""""""""""""""""""""""""""
set smartcase
set ignorecase
set hlsearch

"""""""""""""""""""""""""""""""""""""""""""
" Keybindings
"""""""""""""""""""""""""""""""""""""""""""
set pastetoggle=<F1>

let mapleader = ","
nnoremap <leader>w :w<cr>
nnoremap <leader>q :q<cr>
nnoremap <leader>v :tabnew ~/.vimrc<cr>
nnoremap <right> gt
nnoremap <left> gT
nnoremap <leader>l :set number!<cr>

" Insert a single char
nnoremap <silent><C-i> "=nr2char(getchar())<cr>P

" Show current file
nnoremap <leader>f :echo expand('%:p')<cr>

nnoremap <F3> :tabnew %:p:h<cr>
inoremap <F3> <Esc>:tabnew %:p:h<cr>

nnoremap <leader>gd :Git diff<cr>
nnoremap <leader>gb :Git blame<cr>

iabbrev todo TODO(pflaquerre):
