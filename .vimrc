set nocompatible        " Make Vim more useful
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'kien/ctrlp.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" set background=dark     " Use the Solarized Dark theme
" colorscheme solarized
" let g:solarized_termtrans=1

set clipboard=unnamed   " Use the OS clipboard by default (on versions compiled with `+clipboard`)
set wildmenu            " Enhance command-line completion
set esckeys             " Allow cursor keys in insert mode
set backspace=indent,eol,start  " Allow backspace in insert mode
set ttyfast             " Optimize for fast terminal connections
set gdefault            " Add the g flag to search/replace by default
set encoding=utf-8 nobomb   " Use UTF-8 without BOM
let mapleader=","       " Change mapleader
set binary noeol        " Don’t add empty newlines at the end of files

" Respect modeline in files
set modeline
set modelines=4

" Enable per-directory .vimrc files and disable unsafe commands in them
set exrc
set secure

set number              " Enable line numbers
syntax on               " Enable syntax highlighting
set cursorline          " Highlight current line

set tabstop=4           " hard TAB displays as 4 columns
set shiftwidth=4        " operation >> indents 4 columns
set expandtab           " insert spaces when hitting TABs"
set softtabstop=4       " insert/delete4 spaces when hitting TAB/BACKSPACE
set shiftround          " round indent to multiple of 'shiftwidth'
set autoindent          " align the newsline indent iwth the previous line

" Show “invisible” characters
set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_
set list
set hlsearch            " Highlight searches
set ignorecase          " Ignore case of searches
set incsearch           " Highlight dynamically as pattern is typed
set laststatus=2        " Always show status line
set mouse=a             " Enable mouse in all modes
set noerrorbells        " Disable error bells
set nostartofline       " Don’t reset cursor to start of line when moving around.
set ruler               " Show the cursor position
set shortmess=atI       " Don’t show the intro message when starting Vim
set showmode            " Show the current mode
set title               " Show the filename in the window titlebar
set showcmd             " Show the (partial) command as it’s being typed
set scrolloff=3         " Start scrolling three lines before the horizontal window border

" Centralize backups, swapfiles and undo history
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
if exists("&undodir")
	set undodir=~/.vim/undo
endif
set backupskip=/tmp/*,/private/tmp/* " Don’t create backups when editing files in certain directories

" Strip trailing whitespace (,ss)
function! StripWhitespace()
	let save_cursor = getpos(".")
	let old_query = getreg('/')
	:%s/\s\+$//e
	call setpos('.', save_cursor)
	call setreg('/', old_query)
endfunction
noremap <leader>ss :call StripWhitespace()<CR>
" Save a file as root (,W)
noremap <leader>W :w !sudo tee % > /dev/null<CR>

" Automatic commands
if has("autocmd")
	" Enable file type detection
	filetype on
	" Treat .json files as .js
	autocmd BufNewFile,BufRead *.json setfiletype json syntax=javascript
	" Treat .md files as Markdown
	autocmd BufNewFile,BufRead *.md setlocal filetype=markdown
endif