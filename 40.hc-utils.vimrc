"Boilerplate for a new journal entry
function! JournalEntry()
    "Increment the id.
    "First find the last one and yank it into register '0'.
    "Once found, increment and save it to insert later.
    normal! gg0jjwww"0yiW
    let lastId = @0
    let nextId = @0 + 1

    normal! ggO
    normal! O
    normal! O
    normal! O
    call append(0, "---")
    call append(1, '# ' . strftime('%Y-%m-%d'))
    call append(2, '- id: ' . nextId)
    call append(3, '- energy: ')
    call append(4, '- pain: ')
    call append(5, '- mood: ')
    call append(6, '- sleep: ')
    call append(7, '- tags: ')
    call append(8, '- pix: ')
    call append(9, '')
endfunction

nmap <Leader>je :call JournalEntry()<cr>

"syntax hilighting for journal
":syntax case match
":syntax match txtHeadLine /===/
":highlight link txtHeadLine Structure
"
":syntax match txtHeadDate /^\(19\|20\)\d\{2}-\d\{2}-\d\{2}$/
":highlight link txtHeadDate Structure

