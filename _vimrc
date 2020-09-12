set nu
set rnu

colorscheme gruvbox-material
set background=dark


" Set 'nocompatible' to ward off unexpected things that your distro might
" have made, as well as sanely reset options when re-sourcing .vimrc
set nocompatible

" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
filetype indent plugin on

" Enable syntax highlighting
syntax on

" One such option is the 'hidden' option, which allows you to re-use the same
" window and switch from an unsaved buffer without saving it first. Also allows
" you to keep an undo history for multiple files when re-using the same window
" in this way. Note that using persistent undo also lets you undo in multiple
" files even in the same window, but is less efficient and is actually designed
" for keeping undo history after closing Vim entirely. Vim will complain if you
" try to quit without saving, and swap files will keep you safe if your computer
" crashes.
set hidden

" Better command-line completion
set wildmenu

" Show partial commands in the last line of the screen
set showcmd

" Highlight searches (use <C-L> to temporarily turn off highlighting; see the
" mapping of <C-L> below)
set hlsearch

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
set autoindent
set smartindent

" Use visual bell instead of beeping when doing something wrong
set visualbell

" Use <F11> to toggle between 'paste' and 'nopaste'
set pastetoggle=<F11>

" Indentation settings for using 4 spaces instead of tabs.
" Do not change 'tabstop' from its default value of 8 with this setup.
set shiftwidth=4
set softtabstop=4
set expandtab

set backspace=indent,eol,start
set noerrorbells
set wrap
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch

"Setting the gui options to minimal
"Removes the menubar
" set guioptions -=m
"Removes the tootbar
set guioptions -=T

"Changing the leader key
let mapleader = " "
"keymapping for easy access
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :wincmd h<CR>


"Map the nerdTree to the F2 key for fast interaction
map <leader>nt :NERDTreeToggle<CR>

" Plug Plugin from here---------
call plug#begin('~/.vim/plugged')

Plug 'mbbill/undotree'
Plug 'preservim/nerdtree'
Plug 'morhetz/gruvbox'
"Plug 'git@github.com:Valloric/YouCompleteMe.git' 

call plug#end()

