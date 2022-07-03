syntax on
set nocompatible
filetype off

set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set noswapfile
set nobackup
set laststatus=2
set showmode
set showcmd
set number
set hlsearch
set incsearch
set ignorecase
set smartcase
set encoding=utf8

"Shortcuts"

" Map the <Space> key to toggle a selected fold opened/closed.
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <Space> zf

"Tab controls"
"alt + right"
"alt + left"
nnoremap <Esc>b :tabp<CR>
nnoremap <Esc>f :tabn<CR>

" Automatically save and load folds
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview"

"Format document"
"fn+f2"
inoremap <F2> <ESC>gg=G
nnoremap <F2> <ESC>gg=G

"Select all"
"alt + a"
inoremap æ <ESC>ggVG
nnoremap æ <ESC>ggVG

"Duplicate Line"
"alt+d"
inoremap ∂ <ESC>:t. <CR>
nnoremap ∂ <ESC>:t. <CR>

"begin calling plugins"
call plug#begin('~/.vim/plugins')
Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
Plug 'thaerkh/vim-workspace'
Plug 'mhinz/vim-startify'
Plug 'preservim/nerdtree'
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'tpope/vim-fugitive'
Plug 'vimlab/split-term.vim'
call plug#end()

colorscheme onehalfdark
set background=dark
let mapleader = " "
let g:airline_powerline_fonts = 1
hi Comment ctermbg=0
