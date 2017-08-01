" Enable "pathogen.vim"
execute pathogen#infect()

" Enable syntax highlighting.
" Note: do not use "syntax on" because it overrules color settings with the
" defaults.
syntax enable

" Set dark background for dark Solarized theme.
set background=dark

" Change this value only if the terminal doesn't have Solarized profile set.
"" let g:solarized_termcolors = 256

" Set Solarized theme.
colorscheme solarized

" Convert tabs to spaces.
set expandtab

" Set tabs to 4 spaces. 
set tabstop=4

" Indent with 4 spaces.
set shiftwidth=4

" "<Tab>" and "<BS>" insert and erase "tabstop" spaces.
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

" Set indentation for specific file types (don't really need it for now).
"" filetype indent on

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

" Map ",<space>" to stopping highlighting old search (will enable when I learn
" more about key mappings).
"" nnoremap <leader><space> :nohlsearch<CR>

" Remap "jk" to be "<Esc>" in Insert mode.
inoremap jk <Esc>

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

" "<leader>" is ",".
let mapleader = ","

" Open bash profile file based of the OS.
let g:os = systemlist("uname")[0]
if g:os == "Darwin"
    nnoremap <leader>eb :vsplit ~/.bash_profile<CR>
elseif g:os == "Linux"
    nnoremap <leader>eb :vsplit ~/.bashrc<CR>
endif

" Open ".vimrc".
nnoremap <leader>ev :vsplit $MYVIMRC<CR>
