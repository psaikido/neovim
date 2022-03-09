au BufRead *.php call ConfigPhpFolds()

function! FoldP(lnum)
    if filetype != 'php'
        return
    endif

    let thisline = getline(a:lnum)

    " Fold php function at braces on their own lines
    " so that there are no internal folds.
    " Fold phpdoc comment blocks.
    if match(thisline, '/\*\*') >= 0
        return 'a1'
    elseif match(thisline, '^\s\{4}{') >= 0
        return 'a1'
    elseif match(thisline, '\*/') >= 0
        return 's1'
    elseif match(thisline, '^\s\{4}}') >= 0
        return 's1'
    else
        return '='
    endif
endfunction

function! ConfigPhpFolds()
    set foldmethod=expr
    set foldexpr=FoldP(v:lnum)
    set foldlevel=2
    set foldnestmax=2
    set foldlevelstart=99
endfunction

