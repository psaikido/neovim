let g:mapleader = ";"

"Zoom in on window
nnoremap <Leader>z <C-W>_<C-W><Bar><CR>

"Source the config files
nnoremap <Leader>r :so $MYVIMRC<CR>

"Save
nnoremap <C-s> :w<CR>
inoremap <C-s> <Esc>:w<CR>

"Close
nnoremap <C-c> :q<CR>

"Use escape key to turn off highlight after a search
nnoremap <Esc> :nohlsearch<return><esc>

"Switch with line below
nnoremap <c-d>d ddp

"Switch with line above
nnoremap <c-u>u ddkP

"Come out of insert mode back to normal mode as though hitting 'escape'.
inoremap kj <esc>
"Turn off the old way to force use of the new one above.
inoremap <esc> <nop>

"Quickfix
nnoremap <leader>qo :copen<cr>
nnoremap <leader>qc :cclose<cr>
nnoremap <leader>qn :cnext<cr>
nnoremap <leader>qp :cprev<cr>
