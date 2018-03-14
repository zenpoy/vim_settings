"" General
colorscheme molokai	    " awesome colorscheme
syntax enable		    " enable syntax processing
set tabstop=4		    " number of visual spaces for TAB
set softtabstop=4   	" number of spaces in tab when editing
set expandtab		    " tabs are spaces

"" Leader Shortcuts
let mapleader=","       " leader is comma

"" UI Config
set number              " show line numbers
set showcmd             " show command in bottom bar
set cursorline          " highlight current line

" Default colors for CursorLine
highlight CursorLine ctermbg=DarkRed ctermfg=None

" Change color when entering / leaving Insert mode
autocmd InsertEnter * highlight CursorLine ctermbg=Green ctermfg=Red
autocmd InsertLeave * highlight CursorLine ctermbg=DarkRed ctermfg=None cterm=bold

" Toggle cursor line and column
nnoremap H :set cursorline!<CR>

filetype indent on      " load filetype-specific indent files
set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw only when we need to
set showmatch           " show matching [{()}]

"" Search
set incsearch           " search as characters are entered
set hlsearch            " highlight matches

""" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>


set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " max nested fold

""" space open/closes folds
""" nnoremap <space> za

"" Movement
""" move vertically by visual line
nnoremap j gj
nnoremap k gk

""" Move to the begining/end of line
" nnoremap B ^
" nnoremap E $

""" highlight last inserted text
nnoremap gV `[v`]

""" toggle gundo
nnoremap <leader>u :GundoToggle<CR>

"" Plugins
call plug#begin('~/.vim/plugged')
Plug 'sjl/gundo.vim'
call plug#end()
