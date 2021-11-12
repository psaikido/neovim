" We want markdown files to break between words when wrapping.
augroup markdown_settings " {
	autocmd!
	autocmd FileType markdown :set linebreak
augroup END " }

