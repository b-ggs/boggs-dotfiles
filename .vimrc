" Pathogen
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

" General settings
syntax enable
filetype plugin indent on
set nocompatible
set ruler

" Unity.vim
" nnoremap ,f :Unite file_rec/async<CR>

" EasyMotion.vim
" Gif config
" map  ; <Plug>(easymotion-sn)
" omap ; <Plug>(easymotion-tn)

" highlight kill
nnoremap <silent> <esc> :noh<CR><esc>

" These `n` & `N` mappings are options. You do not have to map `n` & `N` to EasyMotion.
" Without these mappings, `n` & `N` works fine. (These mappings just provide
" different highlight method and have some other features )
" map  n <Plug>(easymotion-next)
" map  N <Plug>(easymotion-prev)

" Disable annoying bells.
set noerrorbells
set visualbell

" Path relative to working directory
set statusline+=%f

" show statusline even when no window split
set laststatus=2

" autoread files
set autoread

" indentation
set breakindent
" system clipboard
set clipboard=unnamedplus,unnamed

" move via display line
map j gj
map k gk

" ctrlp
" ,f : open ctrlp
map ,f :CtrlP<CR>

" file tabs
" ,t : new tab
" ,p : previous tab
" ,n : next tab
map ,t :tabe<CR>#
map ,p :tabp<CR>#
map ,n :tabn<CR>#

" mru
" ,o : open MRU
map ,o :MRU<CR>#

" line numbers
set number
set numberwidth=3

" highlighting search
set hlsearch
set incsearch

" tab == 2 spaces
filetype plugin indent on
set tabstop=2
set shiftwidth=2
set expandtab

" case insensitive search
set ignorecase
" search becomes case sensitive if caps used
set smartcase

" Remap pane navigadtion
nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l

nnoremap ,- <c-w>s
nnoremap ,\ <c-w>v

" Buffer number next to filename
set laststatus=2 statusline=%02n:%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P

" NERDTree
" Ctrl-N : NERDTreeToggle
map ,t :NERDTreeToggle<CR>

" Lightline
let g:lightline = {
      \ 'colorscheme': 'jellybeans',
      \ }
      " \ 'separator': { 'left': '', 'right': '' },
      " \ 'subseparator': { 'left': '', 'right': '' }
  
set noshowmode

" Startify stuff
" Let ctrlp.vim replace startify buffer
let g:ctrlp_reuse_window  = 'startify'

" Ctrlp optimization
let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --hidden
      \ --ignore .git
      \ --ignore .svn
      \ --ignore .hg
      \ --ignore .DS_Store
      \ --ignore "**/*.pyc"
      \ -g ""'"

" Set Startify header
let g:startify_custom_header = [
      \'   ┌─┐┌┐     ┌─┐┌─┐┌─┐ ',
      \'   │└┘├┴┐    │ ┬│ ┬└─┐ ',
      \'   └──└─┘────└─┘└─┘└─┘ ',
  		\'',
  		\ ]

let g:ag_working_path_mode="r"

" Color override
highlight LineNr ctermfg=1
highlight Visual cterm=NONE ctermbg=3 ctermfg=Black guibg=Gray
highlight Search cterm=NONE ctermbg=3 ctermfg=Black guibg=Gray
highlight VertSplit ctermbg=236 ctermfg=236
