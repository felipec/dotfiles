if exists('b:did_indent')
  finish
endif

let b:sh_indent_options = { 'continuation-line': 0 }

runtime! indent/sh.vim
