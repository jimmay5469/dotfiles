"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'rking/ag.vim'

Plugin 'matchit.zip'
Plugin 'ap/vim-css-color'

Plugin 'scrooloose/syntastic'

Plugin 'altercation/vim-colors-solarized'
Plugin 'romainl/Apprentice'

Plugin 'bling/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'

Plugin 'PreserveNoEOL' "required for editorconfig-vim
Plugin 'editorconfig/editorconfig-vim'

Plugin 'pangloss/vim-javascript'
Plugin 'kchmck/vim-coffee-script'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'heartsentwined/vim-emblem'
Plugin 'wavded/vim-stylus'
Plugin 'elixir-lang/vim-elixir'
Plugin 'wting/rust.vim'

call vundle#end()
filetype plugin indent on


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

function! ToggleLineWrap()
  set wrap!
endfunc

function! ToggleLineNumbers()
  if(&relativenumber == 1)
    set number
    set norelativenumber
  else
    set relativenumber
  endif
endfunc

function! Wipeout()
  " figure out which buffers are visible in any tab
  let visible = {}
  for t in range(1, tabpagenr('$'))
    for b in tabpagebuflist(t)
      let visible[b] = 1
    endfor
  endfor
  " close any buffer that are loaded and not visible
  let l:cmd = 'bw'
  for b in range(1, bufnr('$'))
    "if buflisted(b) && !has_key(visible, b)
    if !has_key(visible, b)
      if getbufvar(b, "&mod")
        continue
      endif
      exe l:cmd . ' ' . b
    endif
  endfor
endfun

function! TogglePresenterMode()
  if has("gui_running")
    if(&background == 'dark')
      set guifont=Meslo\ LG\ S\ Regular\ for\ Powerline:h20
      colorscheme solarized
      set background=light
      set transparency=0
    else
      set guifont=Meslo\ LG\ S\ Regular\ for\ Powerline:h10
      colorscheme apprentice
      set background=dark
      set transparency=5
      set lines=70
      set columns=250
    endif
  endif
endfunction

function! ToggleCase()
  let current_word = expand("<cword>")
  let snake_case_word = substitute(current_word, "[A-Z]", "_\\L\\0", "g")
  if(current_word != snake_case_word)
    exec "normal! ciw" . snake_case_word . "\<esc>b"
  else
    let camel_case_word = substitute(substitute(current_word, "_\\w", "\\U\\0", "g"), "_", "", "g")
    exec "normal! ciw" . camel_case_word . "\<esc>b"
  endif
endfunction


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"syntax highlighting
syntax on

"turn on line numbers
set number

"allow switching buffers with unsaved files
set hidden

"search options
set hlsearch
set incsearch

"Show command in bottom right portion of the screen
set showcmd

":e autocomplete settings
set wildmenu
set wildmode=longest:list,full

"format the statusline
set laststatus=2

"don't create swap files
set nobackup
set nowritebackup
set noswapfile

"tabbing
set tabstop=2
set shiftwidth=2
set expandtab
set autoindent
set smartindent

"backspace key
set backspace=2

"don't auto wrap lines
set nowrap

"don't auto wrap lines when editing
set tw=0

"auto load when file changed outside vim
set autoread

"ignores
set wildignore+=*tmp/*,*node_modules/*,*bower_components/*,*.git/*

"NERDTree settings
let NERDTreeShowHidden=1

"EditorConfig settings
let g:EditorConfig_exclude_patterns = ['fugitive://.*']

"Syntastic settings
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_html_checkers=['']


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Style
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"airline stuff
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#tab_min_count = 2
let g:airline_powerline_fonts = 1

"syntax highlighting
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
  set guifont=Meslo\ LG\ S\ Regular\ for\ Powerline:h10
  set background=dark
  set transparency=5
  set lines=70
  set columns=250
endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"j and k shouldn't skip over wrapped lines
nnoremap j gj
nnoremap k gk

"saving
nmap <silent> ,s :w<CR>:wa<CR>

"git
nmap ,g :Git<space>
nmap <silent> ,b :Gblame<CR>
nmap <silent> ,d :Gdiff<CR>

"function mappings
nmap <silent> ,c :call ToggleCase()<CR>
nmap <silent> ,p :call TogglePresenterMode()<CR>
nmap <silent> ,w :call ToggleLineWrap()<CR>

"text search
nmap ,f :Ag<space>

"NERDTree
nmap <silent> ,e :NERDTreeToggle<CR>

"CoffeeCompile
map <silent> ,5 :CoffeeCompile vertical<CR>

"fuzzy file search
nmap ,t <C-P>

"pane navigation
nmap ,l <C-W>l
nmap ,h <C-W>h
nmap ,k <C-W>k
nmap ,j <C-W>j

"pane creation
nmap <silent> <L :vsp<CR>,l
nmap <silent> <H :vsp<CR>
nmap <silent> <K :sp<CR>
nmap <silent> <J :sp<CR>,j
