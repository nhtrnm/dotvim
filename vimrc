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

" Enable mouse use.
set mouse=a

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
set relativenumber

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

" "<Leader>" is ",".
" Note: "mapleader" must be defined before any mapping with "<Leader>".
let mapleader = ","

inoremap jk <Esc>
nnoremap ; :
nnoremap <Space> :nohlsearch<CR>
nnoremap <Leader>b ^
nnoremap <Leader>e $

" Copy/paste OS buffer.
vnoremap <Leader>c "*y
nnoremap <Leader>v "*p

" Remap navigation between splits.
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Open new splits to right and bottom of current split.
set splitbelow
set splitright

" Trim whitespace characters on save.
autocmd BufWritePre *.c,*.cpp,*.cc,*.h,*.py,*.tex :%s/\s\+$//e

" Add closing brace on "<CR>" automatically.
inoremap {<CR> {<CR>}<Esc>O

map <C-N> :NERDTreeToggle<CR>

" Command to YAPF the whole file.
command! -range=% YAPF :<line1>,<line2>call yapf#YAPF()

" Shortcuts for YAPF-ing selected text.
map <Leader>f :call yapf#YAPF()<CR>
imap <Leader>f <C-O>:call yapf#YAPF()<CR>
