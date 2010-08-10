" Maintainer: Felipe Contreras <felipe.contreras@gmail.com>

set background=dark

hi clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "felipec"

" General colors
" hi Cursor guifg=NONE guibg=#656565 gui=none
" hi Normal guifg=#f6f3e8 guibg=#242424 gui=none
hi Cursor guifg=NONE guibg=#dddd00 gui=none
hi Normal guifg=#f6f3e8 guibg=#000000 gui=none

" Syntax highlighting
hi Comment guifg=#999988 gui=italic

"" Constants
hi Constant guifg=#ff8080 gui=none
hi String guifg=#5ce55c gui=italic
hi Boolean guifg=#ff8080 gui=bold

hi Identifier guifg=#ff80ff gui=none
hi Function guifg=#80ff80 gui=bold

hi Statement guifg=#80bfff gui=none
hi PreProc guifg=#bf80ff gui=none
hi Type guifg=#e5ff80 gui=none
hi Special guifg=#dae6cf gui=none

hi Todo guifg=#444444 guibg=#8f8f8f gui=bold
hi Error guifg=#000000 guibg=#ffbf80 gui=bold

" hi Keyword guifg=#8ac6f2

" hi VertSplit guifg=#444444 guibg=#444444
" hi Folded guibg=#384048 guifg=#a0a8b0
" hi Visual guifg=#f6f3e8 guibg=#444444
" hi SpecialKey guifg=#808080 guibg=#343434

hi NonText guifg=#808080 guibg=#333333 gui=none

hi DiffAdd guibg=#224444 gui=none
hi DiffDelete guifg=#ff8080 guibg=#442222 gui=none
hi DiffChange guibg=#444444 gui=none
hi DiffText guibg=#5e5e5e gui=bold

hi ErrorMsg guifg=#000000 guibg=#ffbf80 gui=bold
hi Folded guifg=#8080ff guibg=#333333 gui=bold
hi FoldColumn guifg=#8080ff guibg=#333333 gui=bold

hi diffAdded guifg=#0a0 gui=none
hi diffRemoved guifg=#f00 gui=none
hi diffFile guifg=#60a guibg=#dbe gui=none
hi diffOldFile guifg=#9a9 gui=none
hi diffNewFile guifg=#f99 gui=none

" terminal

" Syntax highlighting
hi Comment ctermfg=lightgray cterm=none

"" Constants
hi Constant ctermfg=red cterm=bold
hi String ctermfg=green cterm=bold
hi Boolean ctermfg=red cterm=bold,standout

hi Identifier ctermfg=magenta cterm=bold
hi Function ctermfg=green cterm=bold

hi Statement ctermfg=cyan cterm=none
hi PreProc ctermfg=magenta cterm=none
hi Type ctermfg=yellow cterm=bold
hi Special ctermfg=white cterm=none

hi Todo ctermfg=darkgray ctermbg=lightgray cterm=bold
hi Error ctermfg=red ctermbg=none cterm=bold,standout
