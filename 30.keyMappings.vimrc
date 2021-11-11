let g:mapleader = ";"

"Zoom in on window
nmap <Leader>z <C-W>_<C-W><Bar><CR>

"Source the config files
nmap <Leader>r :so $MYVIMRC<CR>

"Save
nmap <C-s> :w<CR>
imap <C-s> <Esc>:w<CR>

"Close
nmap <C-c> :q<CR>

"Use escape key to turn off highlight after a search
nnoremap <esc> :noh<return><esc>

"Switch with line below
map <c-d> ddp

"Switch with line above
map <c-u> ddkP
