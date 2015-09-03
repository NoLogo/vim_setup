" Pathogen Settings
filetype off
call pathogen#infect()
call pathogen#helptags()
filetype plugin indent on
syntax on

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

" Wild Menu
set wildignore+=.git,.hg,.svn
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

" Display EOL whitespace
set list
set listchars=trail:.

" Status
set statusline=(%n)
set statusline+=[%t]       "tail of the filename
set statusline+=[%{strlen(&fenc)?&fenc:'none'}, "file encoding
set statusline+=%{&ff}] "file format
set statusline+=%h      "help file flag
set statusline+=%m      "modified flag
set statusline+=%r      "read only flag
set statusline+=%y      "filetype
set statusline+=%=      "left/right separator

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
set guifont=Inconsolata-g\ for\ Powerline:h13

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

" SuperTab
let g:SuperTabDefaultCompletionType = "<c-n>"

" CTags
noremap <leader>gt :!ctags --extra=+f --exclude=.git --exclude=log -R * `rvm gemdir`/gems/*<CR><CR>

" Tagline
nmap <F8> :TagbarToggle<CR>
