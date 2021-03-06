set tabstop=4
set shiftwidth=4
set expandtab
set autoindent

syntax on
set background=light
colorscheme default

if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

if has("autocmd")
  filetype plugin indent on
endif

if has("autocmd")
  autocmd Filetype gitcommit setlocal spell textwidth=72
endif

set showcmd
set showmatch
set ignorecase
set smartcase
set incsearch
set autowrite
set hidden

