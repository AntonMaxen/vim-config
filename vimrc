set nocompatible

set nowrap
set number
set hidden
set encoding=utf-8

"For no backups
set noswapfile

syntax enable
filetype plugin indent on

"Default
set softtabstop=2
set shiftwidth=2
set tabstop=2
set autoindent

"set timeoutlen=1000
"set ttimeoutlen=50

"Vim clipboard
"vnoremap <C-c> "+y
"inoremap <C-v> <ESC>"+pa
set clipboard+=unnamedplus

"remaps"
"nnoremap <S-Tab> <<
"nnoremap <Tab> >>
inoremap <S-Tab> <C-d>
inoremap <Tab> <C-t>

"split navigations
"nnoremap <C-J> <C-W><C-J>
"nnoremap <C-K> <C-W><C-K>
"nnoremap <C-L> <C-W><C-L>
"nnoremap <C-H> <C-W><C-H>

"Window resize
noremap <C-w>+ :resize +5<CR>
noremap <C-w>- :resize -5<CR>
noremap <C-w>< :vertical:resize -5<CR>
noremap <C-w>> :vertical:resize +5<CR>


"Pluginload
call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdtree'
Plug 'lifepillar/vim-solarized8'
Plug 'christoomey/vim-tmux-navigator'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()
"Start Plugin configuration
"Airline Customization
let g:airline_theme='solarized'

"colorscheme
set termguicolors
set background=light
autocmd vimenter * ++nested colorscheme solarized8


"Nerdtree config
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif

"end plugin config
let $RTP=split(&runtimepath, ',')[0]
let $RC="$HOME/.vim/vimrc"

set path=.,**

"Fix mouse issues vim
set mouse=a
"set ttymouse=sgr

"Set current directory to root
nnoremap <leader>cd :cd %:p:h<CR>:pwd<CR>
nnoremap <leader>re :vert res 120<CR>


autocmd FileType python setlocal indentkeys-=<:>
autocmd FileType python setlocal indentkeys-=:
