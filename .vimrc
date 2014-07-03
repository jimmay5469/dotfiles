"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'rking/ag.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'kchmck/vim-coffee-script'
Plugin 'heartsentwined/vim-emblem'
call vundle#end()
filetype plugin indent on


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"syntax highlighting
syntax on

"turn on line numbers
set number

"search options
set hlsearch
set incsearch

"Show command in bottom right portion of the screen
set showcmd

":e autocomplete settings
set wildmenu
set wildmode=longest:list,full

"file tree settings
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_liststyle = 3

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

"auto load when file changed outside vim
set autoread

"auto save changes
au! FocusLost * :update
au! BufLeave * :update
set autowrite
set autowriteall


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Style
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"airline stuff
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#tab_min_count = 2

"syntax highlighting
let g:solarized_termcolors=256
let g:solarized_termtrans=1
set background=dark
colorscheme solarized
highlight Normal guibg=black
highlight LineNr guibg=#111111

"gvim options
if has("gui_running")
  "remove scrollbars
  set guioptions-=l
  set guioptions-=L
  set guioptions-=r
  set guioptions-=b

  "set colors and fonts
  set guifont=Meslo\ LG\ S\ Regular\ for\ Powerline
  set transparency=15

  "airline stuff
  let g:airline_powerline_fonts = 1
endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"line wrapping
function! ToggleLineWrap()
  if(&wrap == 1)
    set nowrap
  else
    set wrap
  endif
endfunc

"line numbers
function! ToggleLineNumbers()
  if(&relativenumber == 1)
    set number
    set norelativenumber
  else
    set relativenumber
  endif
endfunc

"file tree
function! ToggleFileTree()
  if exists("t:expl_buf_num")
    let expl_win_num = bufwinnr(t:expl_buf_num)
    if expl_win_num != -1
      let cur_win_nr = winnr()
      exec expl_win_num . 'wincmd w'
      close
      exec cur_win_nr . 'wincmd w'
      unlet t:expl_buf_num
    else
      unlet t:expl_buf_num
    endif
  else
    exec '1wincmd w'
    Vexplore
    let t:expl_buf_num = bufnr("%")
  endif
endfunction


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"git
nmap ,g :Git<space>
nmap ,b :Gblame<CR>
nmap ,s :Gstatus<CR>
nmap ,d :Gdiff<CR>

"function mappings
nmap <silent> ,w :call ToggleLineWrap()<CR>
nmap <silent> ,n :call ToggleLineNumbers()<CR>
nmap <silent> ,e :call ToggleFileTree()<CR>

"text search
nmap ,f :Ag<space>

"fuzzy file search
nmap ,t <C-P>

"pane navigation
nmap ,l <C-W>l
nmap ,h <C-W>h
nmap ,k <C-W>k
nmap ,j <C-W>j

"pane creation (with fuzzy file search)
nmap <L :vsp<CR>,l,t
nmap <H :vsp<CR>,t
nmap <K :sp<CR>,t
nmap <J :sp<CR>,j,t


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Auto-reload this file
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

augroup AutoReloadVimRC
  au!
  " automatically reload vimrc when it's saved
  au BufWritePost $MYVIMRC so $MYVIMRC
augroup END
