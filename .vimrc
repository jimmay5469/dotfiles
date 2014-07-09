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
Plugin 'wavded/vim-stylus'
call vundle#end()
filetype plugin indent on


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

function! ToggleLineWrap()
  if(&wrap == 1)
    set nowrap
  else
    set wrap
  endif
endfunc

function! ToggleLineNumbers()
  if(&relativenumber == 1)
    set number
    set norelativenumber
  else
    set relativenumber
  endif
endfunc

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

function! SetBackground()
  if strftime("%H") == 12 || (strftime("%H") >= 18 && strftime("%H") < 22)
    set background=dark
    let g:airline_theme='solarized'
    set transparency=10
  else
    highlight Normal guibg=black
    highlight LineNr guibg=#111111
    let g:airline_theme='laederon'
    set transparency=15
  endif
endfunction


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

"gvim options
if has("gui_running")
  "remove scrollbars
  set guioptions-=l
  set guioptions-=L
  set guioptions-=r
  set guioptions-=b

  "set fonts and background
  set guifont=Meslo\ LG\ S\ Regular\ for\ Powerline
  call SetBackground()

  "airline stuff
  let g:airline_powerline_fonts = 1
endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"git
nmap ,g :Git<space>
nmap <silent> ,b :Gblame<CR>
nmap <silent> ,s :Gstatus<CR>
nmap <silent> ,d :Gdiff<CR>

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
nmap <silent> <L :vsp<CR>,l,t
nmap <silent> <H :vsp<CR>,t
nmap <silent> <K :sp<CR>,t
nmap <silent> <J :sp<CR>,j,t

"convert between camelCase and snake_case
nmap <silent> ,cc :s/<c-r>=expand("<cword>")<cr>/<c-r>=substitute(substitute(expand("<cword>"), "_\\w", "\\U\\0", "g"), "_", "", "g")<cr><cr>:noh<cr>
nmap <silent> ,cs :s/<c-r>=expand("<cword>")<cr>/<c-r>=substitute(expand("<cword>"), "[A-Z]", "_\\L\\0", "g")<cr><cr>:noh<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Auto commands
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

augroup AutoSave
  au!
  au FocusLost * :update
  au BufLeave * :update
augroup END

augroup AutoReloadVimrc
  au!
  " automatically reload vimrc when it's saved
  au BufWritePost $MYVIMRC so $MYVIMRC
  au BufWritePost $MYVIMRC :AirlineRefresh
  au BufWritePost $MYVIMRC :AirlineRefresh

  au FocusLost $MYVIMRC so $MYVIMRC
  au FocusLost $MYVIMRC :AirlineRefresh
  au FocusLost $MYVIMRC :AirlineRefresh

  au BufLeave $MYVIMRC so $MYVIMRC
  au BufLeave $MYVIMRC :AirlineRefresh
  au BufLeave $MYVIMRC :AirlineRefresh
augroup END

augroup AutoSetBackground
  if has("gui_running")
    au!
    " set background
    au BufWritePost * call SetBackground()
    au BufWritePost * :AirlineRefresh
    au BufWritePost * :AirlineRefresh

    au FocusLost * call SetBackground()
    au FocusLost * :AirlineRefresh
    au FocusLost * :AirlineRefresh

    au BufLeave * call SetBackground()
    au BufLeave * :AirlineRefresh
    au BufLeave * :AirlineRefresh
  endif
augroup END
