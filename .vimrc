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

" tab == 4 spaces
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab

" disable arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Right> <NOP>
noremap <Left> <NOP>

" remap splits
" ,v : split vertically
" ,h : split horizontally
noremap ,v <C-w>v
noremap ,h <C-w>s

" \l       : list buffers
" \b \f \g : go back/forward/last-used
" \1 \2 \3 : go to buffer 1/2/3 etc
nnoremap <Leader>l :ls<CR>
nnoremap <Leader>b :bp<CR>
nnoremap <Leader>f :bn<CR>
nnoremap <Leader>g :e#<CR>
nnoremap <Leader>1 :1b<CR>
nnoremap <Leader>2 :2b<CR>
nnoremap <Leader>3 :3b<CR>
nnoremap <Leader>4 :4b<CR>
nnoremap <Leader>5 :5b<CR>
nnoremap <Leader>6 :6b<CR>
nnoremap <Leader>7 :7b<CR>
nnoremap <Leader>8 :8b<CR>
nnoremap <Leader>9 :9b<CR>
nnoremap <Leader>0 :10b<CR>

" It's useful to show the buffer number in the status line.
set laststatus=2 statusline=%02n:%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P

" NERDTree
" Ctrl-N : NERDTreeToggle
map <C-n> :NERDTreeToggle<CR>
