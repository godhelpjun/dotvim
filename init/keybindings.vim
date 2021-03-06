let mapleader = ","
let maplocalleader = ";"

" *** VIM ***
nnoremap Y y$

nnoremap <Down> <C-E>
nnoremap <Up> <C-Y>

nnoremap <leader>/ :nohlsearch<cr>
nnoremap <leader>db :bprev<cr>:bdelete #<cr>

nnoremap <F1>   :make<CR>
nnoremap <F6>   :call writefile([g:mintty_app_escape_on], '/dev/tty', 'b')<cr>
nnoremap <S-F6> :call writefile([g:mintty_app_escape_off], '/dev/tty', 'b')<cr>
nnoremap <F10>  :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
      \ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
      \ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

" Clear screen (ctrl+shift) since ctrl+l bound to move window right
noremap  <C-l>

" Ctrl + Shift + Enter moves to end of line
noremap!  <C-o>A

" Start / End of braces {  }
map [[ ?{<CR>w99[{
map ]] /}<CR>b99]}
map ][ j0[[%/{<CR>
map [] k$]]%?}<CR>

" Visual search
vnoremap * y/\V<c-r>=escape(@", '\')<cr><cr>
vnoremap # y/\V<c-r>=escape(@", '\')<cr><cr>

"Smart way to move between windows
noremap <C-h> <C-w>h
noremap <C-l> <C-w>l

" Smart way to scroll
noremap <C-j> <C-e>
noremap <C-k> <C-y>

" Move lines up and down (http://vim.wikia.com/wiki/Moving_lines_up_or_down)
" Using Ctrl+Shift-J, and Ctrl+Shift-K
nnoremap <F13>   :m .+1<CR>==
nnoremap <S-F13> :m .-2<CR>==
inoremap <F13>   <Esc>:m .+1<CR>==gi
inoremap <S-F13> <Esc>:m .-2<CR>==gi
vnoremap <F13>   :m '>+1<CR>gv=gv
vnoremap <S-F13> :m '<-2<CR>gv=gv

" Save file
noremap <C-s> :write<CR>
noremap! <C-s> <Esc>:write<CR>

" Current file name replace forward slashes  with . (useful in js)
cnoremap <expr> <C-R><C-J> substitute(expand("%:r"), "/", ".", "g")
inoremap <expr> <C-R><C-J> substitute(expand("%:r"), "/", ".", "g")

" move to beginning
cnoremap <C-A> <C-B>

" *** PLUGINS ***

" CtrlP
nnoremap <leader>f :CtrlP<CR>
nnoremap <leader>F :CtrlPCurFile<CR>
nnoremap <leader>b :CtrlPBuffer<CR>
nnoremap <leader>m :CtrlPMixed<CR>
nnoremap <leader>M :CtrlPMRUFiles<CR>
nnoremap <leader>t :CtrlPBufTagAll<CR>
nnoremap <leader>p :CtrlPTag<CR>
nnoremap <leader>T :CtrlPBufTag<CR>
nnoremap <leader>L :CtrlPLine<CR>

" netrw
noremap <silent> <Leader>e :call ExToggle("")<CR>
noremap <silent> <Leader>,e :call ExToggle(getcwd())<CR>
noremap <silent> <Leader><Tab> :call VexToggle("")<CR>
noremap <silent> <Leader>,<Tab> :call VexToggle(getcwd())<CR>
