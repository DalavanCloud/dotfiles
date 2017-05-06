set nocompatible
scriptencoding utf-8
set encoding=utf-8
set termencoding=utf-8

syntax enable
set background=light
set t_Co=256
colorscheme solarized


set textwidth=80
set colorcolumn=79
set expandtab
set shiftwidth=2
set softtabstop=2
set shiftround
set autoindent
set copyindent
set tabpagemax=15
set showtabline=2
set number
set hlsearch

nnoremap ; :
nnoremap <tab> :tabn<CR>
nnoremap <s-tab> :tabp<CR>
nnoremap <C-j> :tabn<CR>
nnoremap <C-k> :tabp<CR>
nnoremap <C-o> :tabnew<CR>

filetype plugin indent on
" makefiles
autocmd FileType make setlocal noet sw=8 sts=8
" jump to last line
au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g'\"" | endif

set pastetoggle=<F2>
set showmode
set wrap
set ttyfast
set ignorecase
set smartcase
set smarttab
set incsearch
set nobackup
set noswapfile

set list
set listchars=tab:→\ ,trail:·,extends:#,nbsp:·

"set mouse=a
"nnoremap <C-e> 2<C-e>
"nnoremap <C-y> 2<C-y>

set lazyredraw
set laststatus=2
set cmdheight=2
set switchbuf=useopen
set scrolloff=4
set nomodeline
set cursorline
:hi CursorLine   cterm=NONE ctermbg=222

"nnoremap <C-]> :exe 'Gtag ' . expand('<cword>')<CR>
" Smart_TabComplete
"python from powerline.bindings.vim import source_plugin; source_plugin()
"set smartindent
