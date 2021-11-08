"Boilerplate for a new journal entry
function! JournalEntry()
    normal! ggO
    normal! O
    normal! O
    call append(0, "====")
    call append(1, strftime('%Y-%m-%d'))
endfunction

nmap <Leader>je :call JournalEntry()<cr>

