" Enable syntax highlighting.
" Note: do not use "syntax on" because it overrules color settings with the defaults.
syntax enable

" Convert tabs to spaces.
set expandtab

" Set tabs to 4 spaces. 
set tabstop=4

" Indent with 4 spaces.
set shiftwidth=4

" Show line numbers.
set number

" Show partial command in the bottom right corner.
set showcmd

" Show current line.
set cursorline

" Set indentation for specific file types (don't really need it for now).
"" filetype indent on

" Set visual autocomplete for command menu.
set wildmenu

" Make vim not redraw the screen every time a macro is executed (not useful for me since I am not good with macros).
set lazyredraw

" Highlight matching parenthesis.
set showmatch

" Set incremental search.
set incsearch

" Set highlight search.
set hlsearch

" Map ",<space>" to stopping highlighting old search (will enable when I learn more about key mappings).
"" nnoremap <leader><space> :nohlsearch<CR>

" Remap "jk" to be <Esc> in Insert mode.
inoremap jk <Esc>
