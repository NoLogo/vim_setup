set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'airblade/vim-gitgutter'
Plugin 'altercation/vim-colors-solarized'
Plugin 'chr4/nginx.vim'
Plugin 'ervandew/supertab'
Plugin 'jmcantrell/vim-virtualenv'
Plugin 'kien/ctrlp.vim'
Plugin 'majutsushi/tagbar'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'rking/ag.vim'
Plugin 'szw/vim-tags'
Plugin 'Shougo/deoplete.nvim'
" Plugin 'Shougo/neocomplete.vim'
Plugin 'tpope/vim-sensible'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-syntastic/syntastic'
Plugin 'zchee/deoplete-jedi'

"supertab tagbar vim-tags


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Set file format to unix style
:set fileformat=unix

" Destroy the arrow keys
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" Make life easier
nnoremap j gj
nnoremap k gk

" Easy buffer navigation
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
noremap <leader>v <C-w>v

" Hide *.pyc files
let g:netrw_list_hide= '.*\.pyc$'

" Wild Menu
set wildignore+=.git,.git/,.hg,.svn
set wildignore+=*.class,*.dll,*.exe,*.manifest,*.o,*.obj
set wildignore+=*.spl
set wildignore+=*.DS_Store
set wildignore+=*.pyc
set wildignore+=*.egg-info
set wildignore+=.tox
set wildignore+=.sass-cache
set wildignore+=.coverage.*

set wildmenu
set wildmode=longest,list,full

" Highlighting
set cursorline
hi CursorLineNr   term=bold ctermfg=Yellow gui=bold guifg=Yellow
set hlsearch

" Line Numbers
set relativenumber
set number

" Ruler
set colorcolumn=79

" Status
set statusline=(%n)
set statusline+=[%t]                                    "tail of the filename
set statusline+=[%{strlen(&fenc)?&fenc:'none'},         "file encoding
set statusline+=%{&ff}]                                 "file format
set statusline+=%h                                      "help file flag
set statusline+=%m                                      "modified flag
set statusline+=%r                                      "read only flag
set statusline+=%y                                      "filetype
set statusline+=%=                                      "left/right separator

" Tabs & Spacing
set nowrap
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set textwidth=0

" Swapfile
set noswapfile

" Airline Settings
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
set laststatus=2

" Font
set guifont=Sauce\ Code\ Powerline\ Light:h16

" Solarized theme
syntax enable
set background=dark
colorscheme solarized

" Syntastic Settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers = ['flake8']

" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_extensions = ['tag']
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_user_command = 'find %s -type f'
if executable('ag')
    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
    let g:ctrlp_use_caching = 0
endif

" deoplete-jedi
let g:python_host_prog = '/Users/philip/venvs/py2/bin/python'
let g:python3_host_prog = '/Users/philip/venvs/py3/bin/python'

" Deoplete.
let g:deoplete#enable_at_startup = 1
let g:deoplete#complete_method = 'omnifunc'

" Tagline
nmap <F8> :TagbarToggle<CR>

" SuperTab
let g:SuperTabDefaultCompletionType = "<c-n>"

" CTags
let g:vim_tags_auto_generate = 1
noremap <leader>gt :!ctags --extra=+f --exclude=.git --exclude=log -R * `rvm gemdir`/gems/*<CR><CR>

" Tagbar
nmap <F8> :TagbarToggle<CR>

" BetterWhitespace
set nolist
let g:better_whitespace_verbosity=1
