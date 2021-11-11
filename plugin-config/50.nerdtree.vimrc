"Invoke NERDTree 
map <Leader>e :NERDTree<CR>

"Synchronise NERDTree with current file
nmap <Leader>s :NERDTreeFind<CR>

"Bookmark
nmap <Leader>b :Bookmark<CR>

let NERDTreeShowBookmarks = 1
let NERDTreeMinimalUI = 1

"Open NERDTree on starting vi
autocmd VimEnter * NERDTree
