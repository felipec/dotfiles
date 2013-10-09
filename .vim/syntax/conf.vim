if exists("b:current_syntax")
  finish
endif

syn match confComment "^#.*" contains=confTodo

hi def link confComment	Comment

let b:current_syntax = "conf"
