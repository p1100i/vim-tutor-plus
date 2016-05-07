" Necessary actions
set nocompatible    " be iMproved, required
filetype off        " required, can be on again after: vundle#end()

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

" initalize vundle
call vundle#begin()

" vim-airling for nice status bar
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" fuzzy file finder
" navigate C-j/C-k
" mark open C-z/C-x
Plugin 'kien/ctrlp.vim'

" file browser
Plugin 'scrooloose/nerdtree'

" use snippets by entering string + <tab>
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'

" snippet collection (I do prefer my own) (ex: for+tab in C-file)
Plugin 'honza/vim-snippets'

" Tagbar to see code structure :TagbarToggle
" no ctags needed however they work side-by-side
Plugin 'majutsushi/tagbar'

" split array-like expressions on multiple lines
" gS gJ
Plugin 'AndrewRadev/splitjoin.vim'

" fast navigation
Plugin 'Lokaltog/vim-easymotion'

" using system clipboard
" cp    - copy to clipboard in visual select
" cpiw  - copy to clipboard word
" cv    - copy from clipboard
Plugin 'christoomey/vim-system-copy'

" THE tpope section
" :Gblame, :Gdiff, :Gstatus ...
Plugin 'tpope/vim-fugitive'

" makes . repeat non-native actions
Plugin 'tpope/vim-repeat'

" surround your <move> with <char>
" cs"'  - change
" ds)   - delete
" ysiw' - inner word
" yss   - line
Plugin 'tpope/vim-surround'

" commenting gc
Plugin 'tpope/vim-commentary'


" :Find, :Wall
Plugin 'tpope/vim-eunuch'

" if you want tab keystroke based completion
" Plugin 'ervandew/supertab'

" code completion improved
" Plugin 'Valloric/YouCompleteMe'

" for using ctags
" Plugin 'szw/vim-tags'

call vundle#end()

filetype plugin indent on
filetype indent on

" If you got a font w/ powerline support.
let g:airline_powerline_fonts = 1
let g:airline_theme='term'

" Remove default output of status as airline does it.
set noshowmode

" Nerd tree - position
let g:NERDTreeWinPos = "right"
let g:NERDTreeChDirMode = 1
let g:NERDChristmasTree = 1

" Toggle tagbar.
nmap <F8> :TagbarToggle<CR>


" Disable default mappings
let g:EasyMotion_do_mapping = 0
let g:EasyMotion_do_shade = 0

" Turn on case insensitive feature
let g:EasyMotion_smartcase = 1
nmap <Leader><Leader> <Plug>(easymotion-bd-w)

" JK motions: Line motions
nnoremap <Leader>j <Plug>(easymotion-j)
nnoremap <Leader>k <Plug>(easymotion-k)

" Some surround shortcuts
" - sorround the word
map <Leader>w ysiw
" - sorround the line
map <Leader>e yss
