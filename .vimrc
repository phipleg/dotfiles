set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle
Bundle 'gmarik/vundle'

" My Bundles
Bundle 'nanotech/jellybeans.vim'

Bundle 'tpope/vim-sensible'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-fugitive'

Bundle 'scrooloose/nerdtree'
Bundle 'kien/ctrlp.vim'
" Bundle 'Lokaltog/powerline'
Bundle 'rking/ag.vim'

" Coding
Bundle 'scrooloose/syntastic'
Bundle 'Valloric/YouCompleteMe'

" Ruby
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-rake'
Bundle 'tpope/vim-bundler'

" Gradle
Bundle 'tfnico/vim-gradle'

" Bundle 'slim-template/vim-slim'

call vundle#end()

filetype plugin indent on

let mapleader=","

color jellybeans

set encoding=utf-8
set cursorline
set modelines=0
set shiftwidth=2
set clipboard=unnamed
set synmaxcol=128
set ttyscroll=10
set nowrap
set number

set tabstop=2
set expandtab

set hlsearch
set ignorecase
set smartcase

set nowritebackup
set noswapfile
set nobackup

" Quick ESC
imap jj <ESC>

noremap <tab> <c-w><c-w>
