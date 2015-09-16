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
Plugin 'endel/vim-github-colorscheme'
Plugin 'ap/vim-css-color'

"Gutter
Plugin 'scrooloose/syntastic'
Plugin 'airblade/vim-gitgutter'

"Git
Plugin 'tpope/vim-fugitive'

"Syntax hightlighting
Plugin 'pangloss/vim-javascript'
Plugin 'kchmck/vim-coffee-script'
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

"Syntastic settings
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_html_checkers=['']


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
" Mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"saving
nmap <silent> ,s :w<CR>:wa<CR>

"text search
nmap ,f :Ag<space>

"fuzzy file search
nmap <silent> ,t <C-P>

"pane navigation
nmap <silent> ,l <C-W>l
nmap <silent> ,h <C-W>h
nmap <silent> ,k <C-W>k
nmap <silent> ,j <C-W>j

"pane creation
nmap <silent> <L :vsp<CR>,l
nmap <silent> <H :vsp<CR>
nmap <silent> <K :sp<CR>
nmap <silent> <J :sp<CR>,j
