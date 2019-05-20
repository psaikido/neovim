let g:mapleader = ";"

"Invoke NERDTree 
map <Leader>e :NERDTree<CR>

"Synchonis: NERDTree with current file
nmap <Leader>s :NERDTreeFind<CR>

"Zoom in on window
nmap <Leader>z <C-W>_<C-W><Bar><CR>

"Invoke terminal emulator in a horizontal split below current window
nmap <Leader>t :sp <Bar> te<CR><C-w><C-r>

"Get out of editing mode in a terminal
tnoremap <Esc> <C-\><C-n>

"Source the config files
nmap <Leader>r :so $MYVIMRC<CR>

"PHP folding
nmap <Leader>5 <Esc>:EnableFastPHPFolds<Cr>
nmap <Leader>6 <Esc>:EnablePHPFolds<Cr>
nmap <Leader>7 <Esc>:DisablePHPFolds<Cr>

"Vdebug set breakpoint
nmap <Leader>b :Breakpoint<CR>

"Save
nmap <C-s> :w<CR>
imap <C-s> <Esc>:w<CR>

"Close
nmap <C-c> :q<CR>

"FuzzyFinder
nnoremap <C-p> :FuzzyOpen<CR>
