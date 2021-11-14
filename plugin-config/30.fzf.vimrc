"FuzzyFinder FZF
"Requires Ag (silver) installing from the SilverSearcher
":h fzf-vim

nmap <leader>a <esc>:Ag<cr>
nmap <leader>* :execute ":Ag " . expand('<cWORD>')<cr>
