set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching 
set ignorecase              " case insensitive 
set mouse=v                 " middle-click paste with 
set hlsearch                " highlight search 
set incsearch               " incremental search
set tabstop=2               " number of columns occupied by a tab 
set softtabstop=2           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=2            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set wildmode=longest,list   " get bash-like tab completions
" set cc=80                  " set an 80 column border for good coding style
filetype plugin indent on   "allow auto-indenting depending on file type
syntax on                   " syntax highlighting
set mouse=a                 " enable mouse click
set clipboard=unnamedplus   " using system clipboard
filetype plugin on
set cursorline              " highlight current cursorline
set ttyfast                 " Speed up scrolling in Vim
" set spell                 " enable spell check (may need to download language package)
" set noswapfile            " disable creating swap file
" set backupdir=~/.cache/vim " Directory to store backup files.

" vim plug
call plug#begin()
 	Plug 'scrooloose/nerdtree'
	Plug 'preservim/nerdcommenter'
	Plug 'honza/vim-snippets'
	Plug 'neovim/nvim-lspconfig'

  Plug 'akinsho/toggleterm.nvim'
  Plug 'neoclide/coc.nvim', {'branch':'release'}
call plug#end()

" require("mappings")

" key mappings
nnoremap <C-B> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

nnoremap <silent> <leader><leader> :source $MYVIMRC<CR>

inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>"

autocmd VimEnter * NERDTree | wincmd p

let mapleader = " "

" Toggle Term Setup

lua require("terminal")
