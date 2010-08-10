" Vim indent file
" Language:	Gtk RC
" Maintainer:	Felipe Contreras <felipe.contreras@gmail.com>

" Only load this indent file when no other was loaded.
if exists("b:did_indent")
	finish
endif
let b:did_indent = 1

setlocal indentexpr=GetGtkrcIndent()

" To make Vim call GetLuaIndent() when it finds '\s*end' or '\s*until'
" on the current line ('else' is default and includes 'elseif').
" setlocal indentkeys+=0=end,0=until

setlocal autoindent

" Only define the function once.
if exists("*GetGtkrcIndent")
	finish
endif

function! GetGtkrcIndent()
	" Find a non-blank line above the current line.
	let lnum = prevnonblank(v:lnum - 1)

	" Hit the start of the file, use zero indent.
	if lnum == 0
		return 0
	endif

	let ind = indent(lnum)
	let flag = 0
	let prevline = getline(lnum)
	if prevline =~ '{\s*$'
		let ind = ind + &shiftwidth
		let flag = 1
	endif

	if getline(v:lnum) =~ '^\s*}'
		let ind = ind - &shiftwidth
	endif

	return ind
endfunction
