set nocompatible   " Disable vi-compatibility
set t_Co=256
filetype off

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","

filetype plugin indent on

syntax enable
set background=dark
set guioptions-=T " Removes top toolbar
set guioptions-=r " Removes right hand scroll bar
set go-=L " Removes left hand scroll bar
set linespace=15
set scrolloff=8                 " start scrolling before reaching the end
set showmode                    " always show what mode we're currently editing in
set nowrap                      " don't wrap lines
set textwidth=0
set wrapmargin=0
set tabstop=4                   " a tab is four spaces
set hidden                      " hide buffers instead of closing them
set smarttab
set tags=tags
set softtabstop=4               " when hitting <BS>, pretend like a tab is removed, even if spaces
set expandtab                   " expand tabs by default (overloadable per file type later)
set shiftwidth=4                " number of spaces to use for autoindenting
set shiftround                  " use multiple of shiftwidth when indenting with '<' and '>'
set backspace=indent,eol,start  " allow backspacing over everything in insert mode
set autoindent                  " always set autoindenting on
set copyindent                  " copy the previous indentation on autoindenting
set number                      " always show line numbers
set ignorecase                  " ignore case when searching
set smartcase                   " ignore case if search pattern is all lowercase,
set timeout timeoutlen=500 ttimeoutlen=100
set visualbell           " don't beep
set noerrorbells         " don't beep
set autowrite  " Save on buffer switch
set mouse=a

" Fast saves
nmap <leader>w :w!<cr>

" Common typos
nmap :W :w
nmap :Q :q

" Down is really the next line
nnoremap j gj
nnoremap k gk

" Easy escaping to normal mode
inoremap jk <esc>

" Auto change directory to match current file ,cd
nnoremap <leader>cd :cd %:p:h<CR>:pwd<CR>

" easier window navigation

nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

" Resize vsplit
nmap <C-v> :vertical resize +5<cr>
nmap <C-c> :vertical resize -5<cr>
nmap 25 :vertical resize 40<cr>
nmap 50 <c-w>=
nmap 75 :vertical resize 120<cr>

" Show (partial) command in the status line
set showcmd

" Create split below
nmap :sp :rightbelow sp<cr>

" Move between buffers
nmap <leader>gt :bn<cr>
nmap <leader>gT :bp<cr>

highlight Search cterm=underline

" Auto-remove trailing spaces
autocmd BufWritePre *.php :%s/\s\+$//e

" w!!: Writes using sudo
cnoremap w!! w !sudo tee % >/dev/null

" Redo
nnoremap U :redo<cr>

" Open splits
nmap vs :vsplit<cr>
nmap sp :split<cr>

