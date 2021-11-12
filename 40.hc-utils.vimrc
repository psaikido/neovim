augroup markdown_settings " {
	autocmd!
	autocmd FileType markdown :set linebreak
    autocmd FileType markdown nmap <LocalLeader>je :call JournalEntry()<cr>
    autocmd FileType markdown nmap <LocalLeader>jt :call ChooseATag()<cr>
augroup END " }

