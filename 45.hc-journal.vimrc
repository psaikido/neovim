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

"Filter by tag, output to new split
function! JournalFilter(searchTerm) abort
    call cursor(1,1)
    let str = 'tags:.*' . a:searchTerm
    let matches = []

    "clear register 'a' 
    normal! qaq
    execute 'g/' . str . '/call add(matches, line("."))'

    for m in matches
        call GetSurroundingEntry(m) 
    endfor

    call OutputFilteredResults()
endfunction

function! GetSurroundingEntry(lineNumber) abort
    call cursor(a:lineNumber, 1)
    "Go to first blank line above, select to next block and save in register
    "'a'
    normal! {jV/---k"Ay
endfunction

function! OutputFilteredResults() abort
    setlocal splitright
    set filetype=markdown
    set buftype=nofile
    vsplit filter_journal.md
    normal! ggVGd"ap
    setlocal buftype=
endfunction

function! GetTags() abort
    call cursor(1,1)
    let tags = 'tags: '
    let tag = ''
    let arTags = []
    let uniqueTags = []

    "clear register 'a' 
    normal! qaq
    "Find the tag strings and load them into array arTags
    execute 'g/' . tags . '/call add(arTags, getline(line(".")))'

    for i in arTags
        "Clean the string to leave just the tags themselves.
        let tag = substitute(i, '- tags: ', '', '')

        "Some tag strings have multiple comma separated values
        let lump = split(tag, ',')

        for item in lump
            if IsUnique(uniqueTags, item)
                call add(uniqueTags, item)
            endif
        endfor
    endfor

    return uniqueTags
endfunction

function! IsUnique(uniqueTags, tag) abort
    for j in a:uniqueTags
        if j == a:tag
            return 0
        endif
    endfor

    return 1
endfunction

function! ChooseATag()
    let tags = GetTags()
    let choiceString = join(tags, "\n&")
    let choice = confirm('tag?', choiceString, '', 'Q')
    call JournalFilter(tags[choice - 1])
endfunction

