" init autocmd
autocmd!

" autocmd
autocmd QuickFixCmdPost *grep* cwindow

" auto reload .vimrc
augroup source-vimrc
    autocmd!
    autocmd BufWritePost *vimrc source $MYVIMRC | set foldmethod=marker
    autocmd BufWritePost *gvimrc if has('gui_running') source $MYGVIMRC
augroup END

" runtime path
set runtimepath^=~/.vim/bundle/ctrlp.vim

" color scheme
colorscheme jellybeans
syntax enable
hi NonText guifg=#333333
hi SpecialKey guifg=#333333

" indent
set expandtab
set shiftwidth=4
set softtabstop=4
set autoindent
set nosmartindent

" invisibles
set list
set listchars=tab:>-,eol:$

" line number
set number

" cursor
set cursorline
set virtualedit=onemore
set virtualedit+=block

" backup file
set nobackup

" swap file
set noswapfile

" auto read
set autoread

" show command
set showcmd

" clipboard
set clipboard+=unnamed
set clipboard=unnamed,autoselect
noremap PP "0p
noremap x "_x

" search
set ignorecase
set smartcase
set incsearch
set nowrapscan
set hlsearch
nmap <Esc><Esc> :nohlsearch<CR><Esc>
nmap n nzz
nmap N Nzz
nmap * *zz
nmap # #zz
nmap g* g*zz
nmap g# g#zz

" ruler
set ruler
set title

" visual bell
set visualbell

" backspace
set backspace=indent,eol,start

" scroll
set scrolloff=5

" window
set lines=60 columns=80
set transparency=0
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <S-Left> <C-w><<CR>
nnoremap <S-Right> <C-w>><CR>
nnoremap <S-Up> <C-w>+<CR>
nnoremap <S-Down> <C-w>-<CR>

" keybind
" normal mode
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
noremap <C-e> <Esc>$a
noremap <C-a> <Esc>^a
" insert mode
inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>
inoremap <silent> jj <Esc>
inoremap <C-e> <Esc>$a
inoremap <C-a> <Esc>^i
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>

" disable IME
set imdisable

" leader
let mapleader = "\<Space>"
nnoremap <Leader>o :CtrlP<CR>
nnoremap <Leader>w :w<CR>
noremap <Leader>v 0v$h
noremap <Leader>d 0v$hx
noremap <Leader>y 0v$hy
map <Leader>co <S-i># <ESC>
map <Leader>uc ^xx<ESC>
vmap <Leader>co <S-i># <ESC>
vnoremap <Leader>p "0p

