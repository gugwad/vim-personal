set nocompatible              " be iMproved
filetype off                  " required!
" set the autoindentation with spaces
set expandtab "expand tab specifies indentation with only spaces
set shiftwidth=4
set softtabstop=2
set pastetoggle=<F4>
set rtp+=~/.vim/bundle/vundle/

set undofile "helps is undoing even after closing and reopening files"
set nu

"Color scheme
colorscheme pyte
syntax enable


call vundle#rc()

" let Vundle manage Vundle
" required! 
" My bundles here:
" Some color schemes for php files
Bundle 'daylerees/colour-schemes'

Bundle 'jeffkreeftmeijer/vim-numbertoggle.git'
Bundle 'jelera/vim-javascript-syntax'
Bundle 'pangloss/vim-javascript'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'Raimondi/delimitMate'
imap <C-c> <CR><Esc>O
Bundle 'scrooloose/syntastic'
Bundle 'Valloric/YouCompleteMe'
Bundle 'mattn/emmet-vim'

" These are the tweaks I apply to YCM's config, you don't need them but they might help.
" YCM gives you popups and splits by default that some people might not like, so these should tidy it up a bit for you.
let g:ycm_add_preview_to_completeopt=0
let g:ycm_confirm_extra_conf=0
set completeopt-=preview

" This does what it says on the tin. It will check your file on open too, not
" just on save.
" " You might not want this, so just leave it out if you don't.
let g:syntastic_check_on_open=1

" This used by omin completion buncle inorder to produce autocompletion popups
" can be configured for specific languages
filetype plugin indent on     " required!

"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install (update) bundles
" :BundleSearch(!) foo - search (or refresh cache first) for foo
" :BundleClean(!)      - confirm (or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle commands are not allowed.
