" Plugins: airline, airline-themes, nerdtree, syntastic?, vim-cursorword

set nocompatible
set nomodeline
scriptencoding utf-8
set encoding=utf-8
set termencoding=utf-8

set t_Co=256
syntax enable
set background=light
colorscheme solarized
set number
set ttyfast
set wrap
set list
set listchars=tab:→\ ,trail:·,extends:#,nbsp:·
set switchbuf=usetab
set scrolloff=4
set cursorline
:hi CursorLine   cterm=NONE ctermbg=222
set tabpagemax=20
set showtabline=2
set timeoutlen=1
set ttimeoutlen=1

"set textwidth=80
"set colorcolumn=79
set backspace=eol,start
set pastetoggle=<F2>

set smartindent
set smarttab
set copyindent
set autoindent
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set shiftround

set hlsearch
set incsearch
set ignorecase
set smartcase

set nobackup
set noswapfile

" TODO: redesign
nnoremap ; :
nnoremap <tab> :tabn<CR>
nnoremap <s-tab> :tabp<CR>
map <C-n> :NERDTreeToggle<CR>
inoremap <C-j> <Esc>

autocmd BufNewFile,BufRead *.md setfiletype markdown
autocmd BufNewFile,BufRead *.md setlocal textwidth=80
autocmd FileType make setlocal noet sw=8 sts=8
autocmd FileType go set nolist

" move to last line opened
au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "    normal g'\"" | endif


