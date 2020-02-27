if exists('b:current_syntax')
  finish
endif

runtime! syntax/sh.vim
unlet b:current_syntax

syn keyword shsFuncs test_done test_when_finished
syn keyword shsFuncs test_expect_success test_expect_failure test_expect_unstable nextgroup=shsFuncArg1 skipwhite

syn region shsFuncArg1 matchgroup=shQuote start=+'+ end=+'+ contains=@Spell	contained nextgroup=shsFuncArg2 skipwhite
syn region shsFuncArg2 transparent matchgroup=shExprRegion keepend start=+'+ end=+'+ contains=@shExprList2 contained nextgroup=shSpecialNxt

syn cluster shExprList1	contains=shsFuncs

hi def link shsFuncs Keyword
hi def link shsFuncArg1 shString

let b:current_syntax='sharness'
