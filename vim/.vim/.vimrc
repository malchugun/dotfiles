"++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++" 
"                                                                              "
"                       __   _ _ _ __ ___  _ __ ___                            "
"                       \ \ / / | '_ ` _ \| '__/ __|                           "
"                        \ V /| | | | | | | | | (__                            "
"                         \_/ |_|_| |_| |_|_|  \___|                           "
"                                                                              "
"                                                                              "
"++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"


"-------------------=== System ===--------------------
let $vimhome=fnamemodify(resolve(expand("~/.vimrc")), ':p:h')
let $vundle=$vimhome."/bundle/Vundle.vim"

" Be iMproved
set nocompatible

"=====================================================
"" Vundle settings
"=====================================================
filetype off
set rtp+=$vundle

"-------------------=== Plugins ===--------------------
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'               " let Vundle manage Vundle, required

"-------------------=== Code/Project navigation ===-------------
Plugin 'scrooloose/nerdtree'                " Project and file navigation
Plugin 'majutsushi/tagbar'                  " Class/module browser
Plugin 'junegunn/fzf'                       " Fast transitions on project files
Plugin 'mileszs/ack.vim'                    " Search in project
Plugin 'tyok/nerdtree-ack'                  " Search in project with neerdtree
Plugin 'mbbill/undotree'                    " Undo tree

"-------------------=== Git plugins ===-------------
Plugin 'tpope/vim-fugitive'                 " Git wrapper
Plugin 'airblade/vim-gitgutter'             " Shows a git diff in the sign column
"Plugin 'jreybert/vimagit'                   " Git interactive client
"Plugin 'junegunn/gv.vim'                    " Git log visualiser

"-------------------=== Design ===-------------------------------
Plugin 'bling/vim-airline'                  " Lean & mean status/tabline for vim
Plugin 'vim-airline/vim-airline-themes'     " Themes for airline
Plugin 'Lokaltog/powerline'                 " Powerline fonts plugin
Plugin 'fisadev/FixedTaskList.vim'          " Pending tasks list
Plugin 'rosenfeld/conque-term'              " Consoles as buffers
Plugin 'tpope/vim-surround'                 " Parentheses, brackets, quotes, XML tags, and more
Plugin 'flazz/vim-colorschemes'             " Colorschemes

"-------------------=== Snippets support ===--------------------
Plugin 'garbas/vim-snipmate'                " Snippets manager
Plugin 'MarcWeber/vim-addon-mw-utils'       " dependencies #1
Plugin 'tomtom/tlib_vim'                    " dependencies #2
Plugin 'honza/vim-snippets'                 " snippets repo

"-------------------=== Languages support ===-------------------
Plugin 'scrooloose/nerdcommenter'           " Comment stuff out
Plugin 'fatih/vim-go'                       " This plugin adds Go language support for Vim
Plugin 'mitsuhiko/vim-sparkup'              " Sparkup(XML/jinja/htlm-django/etc.) support
Plugin 'Rykka/riv.vim'                      " ReStructuredText plugin
Plugin 'andrewstuart/vim-kubernetes'        " K8s

"-------------------=== Code  ===-----------------------------
Plugin 'maralla/completor.vim'              " New completor
Plugin 'scrooloose/syntastic'               " Syntax checking plugin for Vim
Plugin 'Chiel92/vim-autoformat'             " Autoformat

call vundle#end()                           " required
"---------------------------------------------------------------

"=====================================================
"" General settings
"=====================================================
let mapleader = "\<space>"                  " set leader to space key
syntax enable                               " syntax highlight

set t_Co=256                                " set 256 colors
colorscheme wombat256mod                    " set color scheme

set number                                  " show line numbers
set ruler
set ttyfast                                 " terminal acceleration

set tabstop=4 softtabstop=4                 " 4 whitespaces for tabs visual presentation
set shiftwidth=4                            " shift lines by 4 spaces
set smarttab                                " set tabs for a shifttabs logic
set expandtab                               " expand tabs into spaces
set autoindent                              " indent when moving to the next line while writing code
set nowrap                                  " nowrap logng lines

set cursorline                              " shows line under the cursor's line
set showmatch                               " shows matching part of bracket pairs (), [], {}

set enc=utf-8                               " utf-8 by default

set nobackup                                " no backup files
set nowritebackup                           " only in case you don't want a backup file while editing
set noswapfile                              " no swap files
set noerrorbells                            " no sound on errors in vim
set undodir=~/.vim/undodir                  " dir with undo file
set undofile                                " undo file

set backspace=indent,eol,start              " backspace removes all (indents, EOLs, start) What is start?

set scrolloff=10                            " let 10 lines before/after cursor during scroll

set clipboard=unnamed                       " use system clipboard

set exrc                                    " enable usage of additional .vimrc files from working directory
set secure                                  " prohibit .vimrc files to execute shell, create files, etc...

"=====================================================
"" Files settings
"=====================================================
filetype on
filetype plugin on
filetype plugin indent on

"=====================================================
"" Tabs / Buffers settings
"=====================================================
tab sball
set switchbuf=useopen
set laststatus=2
set mouse=a
nmap <F9> :bprev<CR>
nmap <F10> :bnext<CR>
nmap <silent> <leader>q :SyntasticCheck # <CR> :bp <BAR> bd #<CR>
" nmap <silent> <leader>Q :q!<CR> 
" nmap Q :qa<CR>
nmap Q :q!<CR>

"" Search settings
"=====================================================
set incsearch                               " incremental search
set hlsearch                                " highlight search results
set smartcase                               " case independent search

nnoremap <silent> <C-p> :FZF<CR>|           " trying to replace ctrlp

"=====================================================
"" AirLine settings
"=====================================================
let g:airline_theme='badwolf'
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#formatter='unique_tail'
let g:airline_powerline_fonts=1

"=====================================================
"" TagBar settings
"=====================================================
let g:tagbar_autofocus=0
let g:tagbar_width=42
autocmd BufEnter *.py :call tagbar#autoopen(0)
autocmd BufWinLeave *.py :TagbarClose

"=====================================================
"" NERDTree settings
"=====================================================
let NERDTreeIgnore=['\.pyc$', '\.pyo$', '__pycache__$']     " Ignore files in NERDTree
let NERDTreeWinSize=40
let NERDTreeShowHidden=1
autocmd VimEnter * if !argc() | NERDTree | endif  " Load NERDTree only if vim is run without arguments
nmap " :NERDTreeToggle<CR>

"=====================================================
"" Gitgutter settings
"=====================================================
highlight GitGutterAdd      ctermfg=Green
highlight GitGutterChange   ctermfg=Yellow
highlight GitGutterDelete   ctermfg=Red
let g:gitgutter_map_keys = 0

"=====================================================
"" Code settings
"=====================================================
let g:completor_gocode_binary = '~/Projects/Go/bin/gocode'

"=====================================================
"" Riv.vim settings
"=====================================================
let g:riv_disable_folding=1

" highlight 'long' lines (>= 80 symbols) in python files and spaces for yaml
augroup vimrc_autocmds
    autocmd!
    autocmd FileType python,rst,c,cpp highlight ColorColumn ctermbg=DarkGrey guibg=Black
    " autocmd FileType python,rst,c,cpp highlight Excess ctermbg=DarkGrey guibg=Black
    " autocmd FileType python,rst,c,cpp match Excess /\%81v.*/
    autocmd FileType python,rst,c,cpp set colorcolumn=80
    autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab indentkeys-=0# indentkeys-=<:>
augroup END

" syntastic
let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_enable_signs=1
let g:syntastic_check_on_wq=0
let g:syntastic_aggregate_errors=1
let g:syntastic_loc_list_height=5
let g:syntastic_error_symbol='X'
let g:syntastic_style_error_symbol='X'
let g:syntastic_warning_symbol='x'
let g:syntastic_style_warning_symbol='x'

" Autoformat
" noremap <F3> :Autoformat<CR>

" highlight disable search
nmap <silent> <leader>n :noh<CR> 

" Git 
nmap <silent> <leader>gs :G<CR> 
nmap <silent> <leader>gc :Gcommit<CR> 
nmap <silent> <leader>ga :Gcommit --amend<CR> 
nmap <silent> <leader>gp :Gpush<CR> 
nmap <silent> <leader>gf :Gfetch<CR> 
nmap <silent> <leader>gr :Grebase<CR> 
nmap <silent> <leader>gb :Gblame<CR>
nmap <silent> <leader>gl :Git log --oneline --decorate --graph<CR>
nmap <silent> <leader>ga :Git log --oneline --decorate --graph --all<CR>

" Diff(vim)
nmap <silent> <leader>dl :diffget //2<CR>
nmap <silent> <leader>dr :diffget //3<CR>
nmap <silent> <leader>do :only<CR>

" Terminal bottom window
nmap <silent> <leader>tt :below terminal ++rows=10<CR>
tnoremap <silent> <leader>ts <C-\><C-n>
" to exit from scroll mode just press insert key

" Undo tree
nmap <silent> <leader>u :UndotreeToggle<CR>

" Save
noremap <F4> :update<CR>

" Run GOcode
"map <F5> :GoRun!<CR>

" Refresh window
map <F5> :edit!<CR>

" Numbers On/OFF
map <F6> :set nonumber!<CR>


