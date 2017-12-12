let g:mapleader = ";"

"Invoke NERDTree 
map <Leader>e :NERDTree<CR>

"Synchonise NERDTree with current file
nmap <Leader>s :NERDTreeFind<CR>

"Zoom in on window
nmap <Leader>z <C-W>_<C-W><Bar><CR>

"Equalise windows
nmap <Leader>b <C-W>=<CR>

"Invoke terminal emulator in a horizontal split below current window
nmap <Leader>t :sp <Bar> te<CR><C-w><C-r>

"Get out of editing mode in a terminal
tnoremap <Esc> <C-\><C-n>

"Source the config files
nmap <Leader>r :so $MYVIMRC<CR>
