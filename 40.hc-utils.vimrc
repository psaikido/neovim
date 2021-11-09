"Boilerplate for a new journal entry
function! JournalEntry()
    normal! ggO
    normal! O
    normal! O
    call append(0, "===")
    call append(1, strftime('%Y-%m-%d'))
endfunction

nmap <Leader>je :call JournalEntry()<cr>

"syntax hilighting for journal
:syntax clear
:syntax case match
:syntax match txtHeadLine /===/
:highlight link txtHeadLine Structure

:syntax match txtHeadDate /^\(19\|20\)\d\{2}-\d\{2}-\d\{2}$/
:highlight link txtHeadDate Structure


