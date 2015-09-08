" Don't try to be vi compatible
set nocompatible

" Helps force plugins to load correctly when it is turned back on below
filetype off

" TODO: Load plugins here (pathogen or vundle)
"Pathogen load
filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
call pathogen#infect()

filetype plugin indent on
syntax on

"File explorer looks like nerdtree
let g:netrw_liststyle=3

let g:pymode =1 "Turn on the whole plugin
let g:pymode_warnings =1 "Turn off plugin's warnings

let g:pymode_doc =1 "Turns on doc script
let g:pymode_doc_bind = 'K' "bind keys to show documentation for current word(selection)
let g:pymode_motion = 1 "enable pymode motion

"bind window movement keys
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

"Turn on the run code script    'g:pymode_run'                              
let g:pymode_run = 1
"Binds keys to run python code                              
let g:pymode_run_bind = '<leader>r'

"Enable functionality 
let g:pymode_breakpoint = 1

"Bind keys
let g:pymode_breakpoint_bind = '<leader>b'

"Manually set breakpoint command (leave empty for automatic detection)
let g:pymode_breakpoint_cmd = ''

"Trim unused white spaces on save                   *'g:pymode_trim_whitespaces'*
let g:pymode_trim_whitespaces = 1

"Turn on code checking                                          *'g:pymode_lint'*
let g:pymode_lint = 1

"Check code on every save (if file has been modified)  *'g:pymode_lint_on_write'*
let g:pymode_lint_on_write = 1

"Default code checkers (you could set several)         *'g:pymode_lint_checkers'*
let g:pymode_lint_checkers = ['pyflakes', 'pep8']

" Turn on syntax highlighting
syntax on

" For plugins to load correctly
filetype plugin indent on

set foldenable  "enable folding
set foldlevelstart =10  "open most folds by default
set foldnestmax=10  "10 nested fold max

map <leader>td <Plug>TaskList

au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"
set completeopt=longest,menuone


call pathogen#infect()
call pathogen#helptags()
" TODO: Pick a leader key
 let mapleader = ","

" Security
set modelines=0

" Show line numbers
set number

" Show file stats
set ruler

" Blink cursor on error instead of beeping (grr)
set visualbell

" Encoding
set encoding=utf-8

" Whitespace
set wrap
set textwidth=79
set formatoptions=tcqrn1
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround

" Cursor motion
set scrolloff=3
set backspace=indent,eol,start
set matchpairs+=<:> " use % to jump between pairs
runtime! macros/matchit.vim
set cursorline  "highlight current line
" Move up/down editor lines
nnoremap j gj
nnoremap k gk

" Allow hidden buffers
set hidden

" Rendering
set ttyfast

" Status bar
set laststatus=2

" Last line
set showmode
set showcmd

" Searching
nnoremap / /\v
vnoremap / /\v
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
map <leader><space> :let @/=''<cr> " clear search

" Remap help key.
inoremap <F1> <ESC>:set invfullscreen<CR>a
nnoremap <F1> :set invfullscreen<CR>
vnoremap <F1> :set invfullscreen<CR>

" Textmate holdouts

" Formatting
map <leader>q gqip

" Visualize tabs and newlines
set listchars=tab:?\ ,eol:¬
" Uncomment this to enable by default:
" set list " To enable by default
" Or use your leader key + l to toggle on/off
map <leader>l :set list!<CR> " Toggle tabs and EOL

colorscheme badwolf
