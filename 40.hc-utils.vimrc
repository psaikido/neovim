"Boilerplate for a new journal entry
function! JournalEntry() abort
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
    call append(8, '')
endfunction

nmap <Leader>je :call JournalEntry()<cr>

"Filter by tag, output to new split
function! JournalFilter(searchTerm) abort
    call cursor(1,1)
    let str = 'tags: ' . a:searchTerm

    let tmp = []
    "clear register 'a' 
    normal! qaq
    execute 'g/' . str . '/call add(tmp, line("."))'

    for i in tmp
        call GetSurroundingEntry(i) 
    endfor

    call OutputFilteredResults(@a)
endfunction

function! GetSurroundingEntry(lineNumber) abort
    call cursor(a:lineNumber, 1)
    normal! {jV/---k"Ay
endfunction

function! OutputFilteredResults(res) abort
    setlocal splitright
    set filetype=markdown
    set buftype=nofile
    vsplit filter_journal.md
    normal! "ap
    set buftype=
endfunction

