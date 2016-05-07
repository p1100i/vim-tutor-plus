" You might want to set this to ','. Tab may be a confusing choice if you use YCM, or supertab.
let mapleader = "\<tab>"

color desert " set color

" Display tab options nicely
set wildmenu wildmode=longest:full,full

set laststatus=2    " statusline always
set history=50      " 50 CLI history.
set noswapfile      " no swap file
set nobackup        " no backup file
set number          " line nums
set relativenumber  " line nums relatively
set ts=4            " tab space 4
set sw=4            " shift width 4
set autoindent      " auto-identation
set expandtab       " tab-press inserts spaces
set incsearch       " already try to match when typing filter
set hlsearch        " highlight the search
set ttyfast         " faster redrawing
set lazyredraw      " only redraw when necessary
set splitbelow      " new windows below
set splitright      " new windows right
set ttimeoutlen=50  " timeoutlen for special keystrokes

" Some mistyping corrections.
command! WQ wq
command! Wq wq
command! W w
command! Q q
command! SP sp
command! Sp sp
command! Vs vs
command! VS vs


" Leader-c in insert mode - autoclose XHTML tags
inoremap <Leader>c </<C-X><C-O><C-X>

" Shortcut for creating / switching tabs.
nnoremap <Leader>h :tabprevious<CR>
nnoremap <Leader>l :tabnext<CR>
nnoremap <Leader>t :tabnew<CR>

" Map j/k for autocompletion navigation.
inoremap <expr> j pumvisible() ? "\<C-N>" : "j"
inoremap <expr> k pumvisible() ? "\<C-P>" : "k"

" Remap control+space to control+n
inoremap <Nul> <C-n>

highlight  IncSearch ctermbg=123 ctermfg=None

" cursorline w/ cursorcolumn
highlight CursorLine cterm=NONE ctermbg=240 ctermfg=None
highlight CursorColumn cterm=NONE ctermbg=240 ctermfg=None


" cursorline only in the current window
augroup CursorLine
  au!
  au VimEnter,WinEnter,BufWinEnter * setlocal cursorline cursorcolumn
  au WinLeave * setlocal nocursorline nocursorcolumn
augroup END


" Set filetype by file extensions.
autocmd BufNewFile,BufRead *.md set filetype=markdown


" Leader-t - toggle whitespace visualization.
nnoremap <Leader>w :call ToggleWhitespaces()<CR>
function! ToggleWhitespaces()
  " Test the setting 'diff', to see if it's on or off.
  " (Any :set option can be tested with &name.
  " See :help expr-option.)
  if &list
    set nolist
  else
    set list
  endif
:endfunction



" Leader-t - max line length symbol.
nnoremap <Leader>v :call ColumnEndToggle()<CR>
function! ColumnEndToggle()
  if &colorcolumn==120
    set colorcolumn=0
  else
    highlight ColorColumn ctermbg=4
    set colorcolumn=120
  endif
:endfunction



" Leader-p for paste toggle
nnoremap <Leader>p :call PasteToggle()<CR>
function! PasteToggle()
  if &paste
    set nopaste
  else
    set paste
  endif
:endfunction



" Leader-d for file diff toggle
nnoremap <Leader>d :call DiffToggle()<CR>
function! DiffToggle()
  " Test the setting 'diff', to see if it's on or off.
  " (Any :set option can be tested with &name.
  " See :help expr-option.)
  if &diff
    windo diffoff
  else
    windo diffthis
  endif
:endfunction


" Disable CTRL-a, as it gets pushed often because of tmux.
map <silent> <c-a> :exe ""<cr>


function! MkdirIfNotExist(path)
  let dirpath=a:path
  if !isdirectory(dirpath)
    call mkdir(dirpath)
  end
:endfunction


" Put all temporary files under the same directory.
" https://github.com/mhinz/vim-galore#handling-backup-swap-undo-and-viminfo-files
if exists('*mkdir')
  call MkdirIfNotExist($HOME.'/.vim')
  call MkdirIfNotExist($HOME.'/.vim/files')
  call MkdirIfNotExist($HOME.'/.vim/files/backup')
  call MkdirIfNotExist($HOME.'/.vim/files/swap')
  call MkdirIfNotExist($HOME.'/.vim/files/undo')
  call MkdirIfNotExist($HOME.'/.vim/files/info')
endif

set backup
set backupdir   =$HOME/.vim/files/backup/
set backupext   =-vimbackup
set backupskip  =
set directory   =$HOME/.vim/files/swap/
set updatecount =100
set undofile
set undodir     =$HOME/.vim/files/undo/
set viminfo     ='100,n$HOME/.vim/files/info/viminfo
