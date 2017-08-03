" Enable "pathogen.vim".
execute pathogen#infect()

" CtrlP configuration.
set runtimepath^=~/.vim/bundle/ctrlp.vim

" Enable syntax highlighting.
" Note: do not use "syntax on" because it overrules color settings with the
" defaults.
syntax enable

" Set indentation for specific file types (don't really need it for now).
filetype plugin indent on

" Set dark background for dark Solarized theme.
set background=dark

" Change this value only if the terminal doesn't have Solarized profile set.
"" let g:solarized_termcolors = 256

" Set Solarized theme.
colorscheme solarized

" Convert tabs to Spaces.
set expandtab

" Set tabs to 4 Spaces. 
set tabstop=4

" Indent with 4 Spaces.
set shiftwidth=4

" "<Tab>" and "<BS>" insert and erase "tabstop" Spaces.
set smarttab

" Copy indent from the current line.
set autoindent

" Do smart autoindenting (take into account the language).
" Note: "autoindent" should be set, too.
set smartindent

" Show line numbers.
set number

" Show partial command in the bottom right corner.
set showcmd

" Highlight current line.
set cursorline

" Set text width.
set textwidth=79

" Set colorcolumn to be one after "textwidth".
set colorcolumn=+1

" Show the line and column number of the cursor position.
set ruler

" Set visual autocomplete for command menu.
set wildmenu

" Make vim not redraw the screen every time a macro is executed (not useful for
" me since I am not good with macros).
set lazyredraw

" Highlight matching parenthesis.
set showmatch

" Set incremental search.
set incsearch

" Set highlight search.
set hlsearch

" Remap "jk" to be "<Esc>" in Insert mode.
inoremap jk <Esc>

" "<Leader>" is ",".
" Note: "mapleader" must be defined before any mapping with "<Leader>".
let mapleader = ","

" Map ",<Space>" to stopping highlighting old search (will enable when I learn
" more about key mappings).
nnoremap <Leader><Space> :nohlsearch<CR>

" New way to reach beginning and end of a line.
nnoremap <Leader>h ^
nnoremap <Leader>l $

" Remap navigation between splits.
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Open new splits to right and bottom of current split.
set splitbelow
set splitright

" Remap ";" to be ":" for simplicity.
nnoremap ; :

" Open bash profile file based of the OS.
let g:os = systemlist("uname")[0]
if g:os == "Darwin"
    nnoremap <Leader>eb :vsplit ~/.bash_profile<CR>
elseif g:os == "Linux"
    nnoremap <Leader>eb :vsplit ~/.bashrc<CR>
endif

" Open ".vimrc".
nnoremap <Leader>ev :vsplit $MYVIMRC<CR>

" Command to YAPF the whole file.
command! -range=% YAPF :<line1>,<line2>call yapf#YAPF()

" Shortcuts for YAPF-ing selected text.
map <Leader>f :call yapf#YAPF()<CR>
imap <Leader>f <C-O>:call yapf#YAPF()<CR>
