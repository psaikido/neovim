"FuzzyFinder FZF
"Requires Ag (silver) installing from the SilverSearcher
":help fzf-vim
"Use ;a to search in whatever dir the current working directory is in.
"Use ;* for the same but look for the word under the cursor.
"Use ;ah to search from the home directory.
"Because I've put a .gitignore in $HOME it controls what dirs get looked at.

nnoremap <leader>a <esc>:Ag<cr>
nnoremap <leader>ah :execute "call fzf#vim#ag('', {'dir': '~/', 'down': '40%'})"<cr>
nnoremap <leader>* :execute ":Ag " . expand('<cWORD>')<cr>

