set nocompatible              " be iMproved, required
filetype off                  " required
" Set the autoindentation with spaces
set expandtab "expand tab specifies indentation with only spaces
set shiftwidth=2
set softtabstop=2
set pastetoggle=<F4>
set list listchars=eol:⏎,tab:␉·,trail:␠,space:␠,nbsp:⎵
set backspace=indent,eol,start
"
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

set t_Co=256
set undofile "helps is undoing even after closing and reopening files"
set nu

"Color scheme
syntax enable
" colorscheme kiwi
"
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'Yggdroot/indentLine'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}

Plugin 'daylerees/colour-schemes'

Plugin 'jeffkreeftmeijer/vim-numbertoggle.git'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'pangloss/vim-javascript'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'Raimondi/delimitMate'
imap <C-c> <CR><Esc>O
Plugin 'scrooloose/syntastic'
Plugin 'Valloric/YouCompleteMe'
Plugin 'mattn/emmet-vim'

" These are the tweaks I apply to YCM's config, you don't need them but they
" might help.
" YCM gives you popups and splits by default that some people might not
" like, so these should tidy it up a bit for you.
let g:ycm_add_preview_to_completeopt=0
let g:ycm_confirm_extra_conf=0
set completeopt-=preview
"
" This does what it says on the tin. It will check your file on open too,
" not
" just on save.
" You might not want this, so just leave it out if you don't.
let g:syntastic_check_on_open=1
"
" This used by omin completion buncle inorder to produce autocompletion
" popups
" can be configured for specific languages
"
"let g:indentLine_leadingSpaceChar='·'
"let g:indentLine_leadingSpaceEnabled='1'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
