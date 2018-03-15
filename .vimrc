"" Plugins
call plug#begin('~/.vim/plugged')
" Plug 'sjl/gundo.vim'
Plug 'mbbill/undotree' 
Plug 'flazz/vim-colorschemes'
Plug 'davidhalter/jedi-vim'
Plug 'vim-python/python-syntax'
Plug 'scrooloose/nerdtree'
" Plug 'ctrlpvim/ctrlp.vim'
Plug 'terryma/vim-multiple-cursors'
call plug#end()


let g:python_highlight_all = 1

" vim powerline statusline
" python from powerline.vim import setup as powerline_setup
" python powerline_setup()
" python del powerline_setup

"" General
set background=dark     " dark background is awesome
colorscheme Monokai     " awesome colorscheme
syntax enable           " enable syntax processing
set tabstop=4           " number of visual spaces for TAB
set softtabstop=4       " number of spaces in tab when editing
set expandtab           " tabs are spaces
set backspace=2         " compatible with version 5.4 and earlier

"" Leader Shortcuts
let mapleader=","       " leader is comma

"" UI Config
set number              " show line numbers
set showcmd             " show command in bottom bar
set cursorline          " highlight current line

" Default colors for CursorLine
" highlight CursorLine ctermbg=DarkRed ctermfg=None cterm=bold

" Change color when entering / leaving Insert mode
" autocmd InsertEnter * highlight CursorLine ctermbg=Black ctermfg=None cterm=bold
" autocmd InsertLeave * highlight CursorLine ctermbg=DarkRed ctermfg=None cterm=bold

" Toggle cursor line and column
nnoremap H :set cursorline!<CR>

" set modeline            " Options will apply to all files that you edit
filetype indent on      " load filetype-specific indent files
set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw only when we need to
set showmatch           " show matching [{()}]


set list
set listchars=tab:→\ ,eol:↲,nbsp:␣,trail:•,extends:⟩,precedes:⟨

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
nnoremap <leader>u :UndotreeToggle<CR>
" nnoremap <leader>u :GundoToggle<CR>

" Nerdtree settings
autocmd vimenter * NERDTree
map <leader>t :NERDTreeToggle<CR>

