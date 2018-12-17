"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-plug
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')

"Spacemacs (use local vim-spacemacs if possible)
if !empty(glob("~/repos/vim-spacemacs"))
  Plug '~/repos/vim-spacemacs'
else
  Plug 'jimmay5469/vim-spacemacs'
endif

"Key binding menues
Plug 'hecal3/vim-leader-guide'

"Good defaults
Plug 'tpope/vim-sensible'
"Plug 'PreserveNoEOL' "required for editorconfig-vim
Plug 'editorconfig/editorconfig-vim'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-repeat'

"Navigation
Plug 'tpope/vim-vinegar'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

"Pane navigation
Plug 'christoomey/vim-tmux-navigator'

"Theme
"Plug 'romainl/Apprentice'
Plug 'chriskempson/base16-vim'
Plug 'ap/vim-css-color'
Plug 'sjl/vitality.vim' "needed for diminactive focus setting
Plug 'blueyed/vim-diminactive'

"Git
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'

"Syntax hightlighting
Plug 'sheerun/vim-polyglot'

"Better autochdir
Plug 'airblade/vim-rooter'

"Autocomplete
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
endif
Plug 'jiangmiao/auto-pairs'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-surround'
Plug 'sbdchd/neoformat'

call plug#end()


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"fix copy paste error in osx sierra
set clipboard=unnamed

"enable mouse click/scroll
set mouse=a

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
set wildignore+=*tmp/*,*node_modules/*,*bower_components/*,*.git/*,*.pyc,*lib/python*

"EditorConfig settings
let g:EditorConfig_exclude_patterns = ['fugitive://.*']

"better autochdir
let g:rooter_silent_chdir = 1

"folding
set foldmethod=indent
set nofoldenable

"autocomplete
if has('nvim')
  " Use deoplete.
  let g:deoplete#enable_at_startup = 1
  let g:deoplete#enable_ignore_case = 1
  inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
endif
let g:closetag_filenames = "*.html,*.js,*.jsx,*.eex"


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Statusline/Tabline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! ShortPath(path)
  let cwd = substitute(a:path, $HOME, "~", "")
  return substitute(cwd, "\\~/repos/", "", "")
endfunction
function! ShortFilepath()
  return ShortPath(expand("%f"))
endfunction
function! ShortCWD()
  return ShortPath(getcwd())
endfunction
function! IsModified()
  return &modified?"[+]":""
endfunction

"Statusline
function! StatusLine()
  let s = ''
  let s .= '%{IsModified()}%r' "File status
  let s .= ' %{ShortFilepath()}:%{line(".")}:%{col(".")}'
  let s .= '%=%L ' "Right align line numbers
  return s
endfunction
set statusline=%!StatusLine()

"Tabline
set showtabline=2
function! Tabline()
  let s = ''
  for i in range(tabpagenr('$'))
    let tab = i + 1
    let winnr = tabpagewinnr(tab)
    let buflist = tabpagebuflist(tab)
    let bufnr = buflist[winnr - 1]
    let bufname = bufname(bufnr)

    let s .= '%' . tab . 'T'
    let s .= (tab == tabpagenr() ? '%#TabLineSel#' : '%#TabLine#')
    let s .= (bufname != '' ? '['. fnamemodify(bufname, ':t') . ']' : '[No Name]')
  endfor

  let s .= '%#TabLineFill#'

  " right-align the CWD
  let s .= '%=%#TabLineSel#[%{ShortCWD()}]'

  return s
endfunction
set tabline=%!Tabline()


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Style
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"diminactive settings
let g:diminactive_enable_focus = 1

"Syntax highlighting
if $TERM_PROGRAM == "iTerm.app" && filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif

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

let g:spacemacs#plugins = [
  \ 'tpope/vim-fugitive',
  \ 'junegunn/fzf.vim',
\ ]
let g:spacemacs#excludes = [
  \ '^br',
  \ '^fed',
  \ '^ff',
  \ '^fs',
  \ '^pp',
\ ]

nnoremap <LEADER>br :checktime<CR>:e<CR>
nnoremap <LEADER>fs :wa<CR>
nnoremap <LEADER>fed :e ~/repos/dotfiles/.vimrc.symlink<CR>
nnoremap <LEADER>pp :e ~/repos/
nnoremap <LEADER>ff :e <C-R>=substitute(expand("%:p:h"), getcwd(), ".", "")<CR>/

"Key binding menues
nnoremap <silent> <LEADER> :<C-U>LeaderGuide '<SPACE>'<CR>
vnoremap <silent> <LEADER> :<C-U>LeaderGuideVisual '<SPACE>'<CR>

"Reload vim-spacemacs if it is local
if !empty(glob("~/repos/vim-spacemacs"))
  let g:spacemacs#excludes = add(g:spacemacs#excludes, '^feR')
  nnoremap <LEADER>feR :source ~/.vimrc<CR>:source ~/repos/vim-spacemacs/plugin/spacemacs.vim<CR>
endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Testing new things
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"F1 to see syntax highlight under cursor
nm <silent> <F1> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name")
    \ . '> trans<' . synIDattr(synID(line("."),col("."),0),"name")
    \ . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name")
    \ . ">"<CR>

"italic
hi Comment cterm=italic
hi htmlArg cterm=italic
hi Include cterm=italic
hi jsReturn cterm=italic
hi jsThis cterm=italic
hi StorageClass cterm=italic
hi xmlAttrib cterm=italic

"bold
hi jsVariableDef cterm=bold

" Highlight all instances of word under cursor, when idle.
" Useful when studying strange source code.
nnoremap <LEADER>* :if AutoHighlightToggle()<Bar>set hls<Bar>endif<CR>
function! AutoHighlightToggle()
  let @/ = ''
  if exists('#auto_highlight')
    au! auto_highlight
    augroup! auto_highlight
    setl updatetime=4000
    return 0
  else
    augroup auto_highlight
      au!
      au CursorHold * let @/ = '\V\<'.escape(expand('<cword>'), '\').'\>'
    augroup end
    setl updatetime=50
    return 1
  endif
endfunction
hi Search ctermfg=242 ctermbg=222

" automatically reload changed files
augroup reload
  au!
  au FocusGained * :checktime
augroup end

" auto format on save
nnoremap <LEADER>taf :call AutoFormatToggle()<CR>
function! AutoFormatToggle()
  if get(b:, 'auto_format', 1)
    let b:auto_format = 0
    echo 'Auto Format OFF'
  else
    let b:auto_format = 1
    echo 'Auto Format ON'
  endif
endfunction
augroup fmt
  autocmd!
  if get(b:, 'auto_format', 1)
    autocmd BufWritePre * Neoformat
  endif
augroup end

" folding
set foldlevelstart=99

" testing helpers
nnoremap <LEADER>cp :let @+= ShortFilepath()<CR>
nnoremap <LEADER>mt :wa<CR>:! mix test <C-R>=ShortFilepath()<CR><CR>
