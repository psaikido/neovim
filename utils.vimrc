function! FoldC() abort
    set foldmethod=manual
    :execute "normal! /" . '\v/**' . "\<cr>" . 'zf/\*\/' . "\<cr>"
endfunction

:command! -nargs=0 FoldC :call FoldC()
