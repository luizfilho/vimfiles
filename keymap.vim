" ----------
" Leader key
" ----------
let mapleader = ","
let maplocalleader = "."

imap jk <ESC>
nnoremap ; :

" Paste mode
set pastetoggle=<F2>

" Search
nmap <Space> /
nnoremap / /\v
vnoremap / /\v

" Ag Search
nmap <leader>a :Ag
" Rotating among results
map <C-n> :cn<CR>
map <C-p> :cp<CR>

" Clear search
nnoremap <leader><space> :noh<cr>

" Saving and buffer stuff
nmap <leader><ESC> :wqa!<CR>
nmap <leader>q :q!<CR>
nmap <leader>w :w!<CR>

" Switch between / delete buffers
noremap <tab> :bn<CR>
noremap <S-tab> :bp<CR>
nmap <leader>d :bd<CR>
nmap <leader>D :bufdo bd<CR>

" " NERDtree
nmap <silent> <leader>p :NERDTreeToggle<cr>%

" Ctrlp.vim
let g:ctrlp_map = '<leader>o'
let g:ctrlp_working_path_mode = 'ra'

" ,# Surround a word with #{ruby interpolation}
map ,# ysiw#
vmap ,# c#{<C-R>"}<ESC>

" ," Surround a word with "quotes"
map ," ysiw"
vmap ," c"<C-R>""<ESC>

" ,' Surround a word with 'single quotes'
map ,' ysiw'
vmap ,' c'<C-R>"'<ESC>

" ,) or ,( Surround a word with (parens)
" The difference is in whether a space is put in
map ,( ysiw(
map ,) ysiw)
vmap ,( c( <C-R>" )<ESC>
vmap ,) c(<C-R>")<ESC>

" ,[ Surround a word with [brackets]
map ,] ysiw]
map ,[ ysiw[
vmap ,[ c[ <C-R>" ]<ESC>
vmap ,] c[<C-R>"]<ESC>

" ,{ Surround a word with {braces}
map ,} ysiw}
map ,{ ysiw{
vmap ,} c{ <C-R>" }<ESC>
vmap ,{ c{<C-R>"}<ESC>

map ,` ysiw`

map <leader>co :TComment<CR>
imap <D-/> <Esc>:TComment<CR>i

" ==============================
" Window/Tab/Split Manipulation
" ==============================
" Move between split windows by using the four directions H, L, I, N
nnoremap <silent> <C-h> <C-w>h
nnoremap <silent> <C-l> <C-w>l
nnoremap <silent> <C-k> <C-w>k
nnoremap <silent> <C-j> <C-w>j

" Create window splits easier. The default
" way is Ctrl-w,v and Ctrl-w,s. I remap
" this to vv and ss
nnoremap <silent> vv <C-w>v
nnoremap <silent> ss <C-w>s

" Fix commom typos
if has("user_commands")
    command! -bang -nargs=? -complete=file E e<bang> <args>
    command! -bang -nargs=? -complete=file W w<bang> <args>
    command! -bang -nargs=? -complete=file Wq wq<bang> <args>
    command! -bang -nargs=? -complete=file WQ wq<bang> <args>
    command! -bang Wa wa<bang>
    command! -bang WA wa<bang>
    command! -bang Q q<bang>
    command! -bang QA qa<bang>
    command! -bang Qa qa<bang>
endif
