if exists('b:current_syntax')
  finish
endif

syn region iniHeader start="^\s*\[" end="\]"
syn match iniLabel "^.\{-}\ze\s*=" nextgroup=iniValue
syn match iniValue "=\zs.*"
syn match iniComment "^[#;].*$"

hi def link iniHeader Title
hi def link iniComment Comment
hi def link iniLabel Type
hi def link iniValue String

let b:current_syntax='ini'
