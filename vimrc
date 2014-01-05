set nocompatible " Disable vi compability
filetype off " Required for vundle

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" My bundles here:
"
" original repos on GitHub
"Bundle 'tpope/vim-fugitive'
"Bundle 'Lokaltog/vim-easymotion'
"Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'
Bundle 'tpope/vim-bundler.git'
" vim-scripts repos
"Bundle 'L9'
"Bundle 'FuzzyFinder'
" non-GitHub repos
"Bundle 'git://git.wincent.com/command-t.git'
" Git repos on your local machine (i.e. when working on your own plugin)
" Bundle 'file:///Users/gmarik/path/to/plugin'
" ...

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install (update) bundles
" :BundleSearch(!) foo - search (or refresh cache first) for foo
" :BundleClean(!)      - confirm (or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle commands are not allowed.

command! W w
command! Q q

set noerrorbells " No sounds
set novisualbell " No sounds
set t_vb=

let mapleaser = ","
let g:mapleader = ","

imap jj <ESC>
inoremap <ESC> <ESC>`^
nnoremap ; :

" Move vertical on wrapped lines
nnoremap j gj
nnoremap k gk

set pastetoggle=<F12>

noremap <up> <nop> " Disable arrow buttons in normal mode
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>

autocmd! bufwritepost .vimrc source % " Reload vimrc if changed
autocmd BufWritePre * :%s/\s\+$//e " Remove trailing whitespace
autocmd BufEnter * silent! lcd %:p:h " Change working directory to file viewed
syntax on " syntax highlightning
set number " Line numbering
set linespace=0 "
set showmatch "
set nobackup " No backup
set nowritebackup " No backup
set noswapfile " No swapfile
set undodir=~/.vim_runtime/undodir
set undofile
set ruler " Always show position
set nolist "Highlight unwanted whitespace
set shell=/bin/bash " set shell
set autoread " auto read if file is changed
set history=1000 " history size
set hidden " Hide buffers
set virtualedit=onemore " Allow navigation to column after last character"
set mouse=a " Enable mouse


