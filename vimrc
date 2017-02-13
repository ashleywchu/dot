set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-haml'
Plugin 'pangloss/vim-javascript'
Plugin 'vim-syntastic/syntastic'
Plugin 'Valloric/YouCompleteMe'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'jiangmiao/auto-pairs'

call vundle#end()
filetype plugin indent on

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%F

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_ruby_checkers = ['rubocop', 'rubylint']
let g:syntastic_html_checkers = ['gjslint', 'tidy']
let g:syntastic_javascript_checkers = ['jshint', 'JSXHint']
let g:synstastic_typescript_checkers = ['eslint', 'tslint']

let g:solarized_termcolors=256

autocmd vimenter * NERDTree

syntax enable
set background=dark
colorscheme solarized
set number
set cursorline
set laststatus=2
set showmode
set showcmd
set showmatch
set encoding=utf-8
set incsearch
set hlsearch
set ignorecase smartcase
set tabstop=2 softtabstop=2 shiftwidth=2 ai
set expandtab
set nobackup
set backspace=indent,eol,start
set nostartofline
set ruler
set list
set listchars=""
set listchars=tab:\ \
set listchars+=trail:.
set listchars+=extends:>
set listchars+=precedes:<
set runtimepath^=~/.vim/bundle/ctrlp.vim
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe

vnoremap <C-c> "*y

set clipboard=unnamed

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Disable Arrow Keys
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 nnoremap <up> <nop>
 nnoremap <down> <nop>
 nnoremap <left> <nop>
 nnoremap <right> <nop>
 inoremap <up> <nop>
 inoremap <down> <nop>
 inoremap <left> <nop>
 inoremap <right> <nop>
 nnoremap j gj
 nnoremap k gk

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Navigation
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 nnoremap <c-j> <c-w>j
 nnoremap <c-k> <c-w>k
 nnoremap <c-h> <c-w>h
 nnoremap <c-l> <c-w>l


let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'
