"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

"Spacemacs
Plugin 'jimmay5469/vim-spacemacs'

"Good defaults
Plugin 'tpope/vim-sensible'
Plugin 'PreserveNoEOL' "required for editorconfig-vim
Plugin 'editorconfig/editorconfig-vim'

"Navigation
Plugin 'tpope/vim-vinegar'
Plugin 'kien/ctrlp.vim'
Plugin 'rking/ag.vim'

"Theme
Plugin 'romainl/Apprentice'
Plugin 'ap/vim-css-color'

"Git
Plugin 'tpope/vim-fugitive'

"Syntax hightlighting
Plugin 'pangloss/vim-javascript'
Plugin 'mustache/vim-mustache-handlebars'

call vundle#end()
filetype plugin indent on


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"line numbers
set number

"tabs
set tabstop=2
set shiftwidth=2

"highlight search
set hlsearch

":e autocomplete settings
set wildmenu
set wildmode=longest:list,full

"don't create swap files
set nobackup
set nowritebackup
set noswapfile

"Ignores
set wildignore+=*tmp/*,*node_modules/*,*bower_components/*,*.git/*

"EditorConfig settings
let g:EditorConfig_exclude_patterns = ['fugitive://.*']

"don't timeout commands so quickly
set timeoutlen=10000


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Style
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Syntax highlighting
set background=dark
colorscheme apprentice

"gvim options
if has("gui_running")
  "remove scrollbars
  set guioptions-=l
  set guioptions-=L
  set guioptions-=r
  set guioptions-=b

  "set fonts and background
  set transparency=5
  set lines=70
  set columns=250
endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Key Bindings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader = "\<SPACE>"

"reloading
nmap <LEADER>mr :checktime<CR>
