" Maintainer: Felipe Contreras <felipe.contreras@gmail.com>
"
" References:
" http://vimcasts.org/episodes/creating-colorschemes-for-vim/
" :runtime syntax/hitest.vim
" https://github.com/gerw/vim-HiLinkTrace

set background=dark

hi clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "felipec"

if exists("b:current_syntax")
  if b:current_syntax == "diff"
    syn match diffFileId "^diff.*"
    syn match diffFile "^index .*"
    syn match diffOldFile "^--- .*"
    syn match diffNewFile "^+++ .*"
  elseif b:current_syntax == "vim"
    syn match vimHiGuiRgb contained "#\x\{3\}\>"
  endif
endif

" General colors
hi Normal guifg=#eeeeee ctermfg=7 guibg=#111111 ctermbg=233 gui=none
hi Cursor guifg=NONE guibg=#bbddee ctermbg=153 gui=none
hi MatchParen guibg=#5566aa ctermbg=61

" UI colors
hi ErrorMsg guifg=#000000 ctermfg=0 guibg=#ffcc88 ctermbg=222 gui=bold
hi Folded guifg=#8888ff ctermfg=105 guibg=#333333 ctermbg=236 gui=bold
hi FoldColumn guifg=#8888ff ctermfg=105 guibg=#333333 ctermbg=236 gui=bold
hi NonText guifg=#888888 ctermfg=102 guibg=#333333 ctermbg=236 gui=none
hi Search guifg=#6600aa ctermfg=55 guibg=#ddbbee ctermbg=183 gui=underline
hi SpellBad guisp=#bb5555
hi SpellCap guisp=#5555bb
hi SpellRare guisp=#bb55bb
hi SpellLocal guisp=#55bbbb
hi LineNr guifg=#bbbb88 ctermfg=144
hi CursorLineNr guifg=#eeee88 ctermfg=228 gui=bold
hi CursorLine guibg=#444444 ctermbg=238
hi CursorColumn guibg=#444444 ctermbg=238
hi Visual guibg=#333333 ctermbg=236
hi Pmenu guifg=#221133 ctermfg=235 guibg=#ddbbee ctermbg=183
hi PmenuSel guifg=#ddbbee ctermfg=183 guibg=#221133 ctermbg=235
hi SignColumn guifg=#88ffff guibg=#333333

" Syntax highlighting
hi Comment guifg=#999999 ctermfg=246 gui=italic

"" Constants
hi Constant guifg=#ff8888 ctermfg=210 gui=none
hi String guifg=#66ee66 ctermfg=83 gui=italic
hi Boolean guifg=#ff8888 ctermfg=210 gui=bold

hi Identifier guifg=#ff88ff ctermfg=213 gui=none
hi Function guifg=#88ff88 ctermfg=120 gui=bold

hi Statement guifg=#88ccff ctermfg=117 gui=none
hi PreProc guifg=#cc88ff ctermfg=177 gui=none
hi Type guifg=#eeff88 ctermfg=228 gui=none
hi Special guifg=#ffdd88 ctermfg=222 gui=none

hi Todo guifg=#444444 ctermfg=238 guibg=#999999 ctermbg=246 gui=bold
hi Error guifg=#000000 ctermfg=0 guibg=#ffcc88 ctermbg=222 gui=bold

hi Underlined guifg=#88aaff ctermfg=111 gui=underline

hi DiffAdd guibg=#335544 ctermbg=238 gui=none
hi DiffDelete guifg=#443333 ctermfg=237 guibg=#443333 ctermbg=237 gui=none
hi DiffChange guibg=#334455 ctermbg=238 gui=none
hi DiffText guibg=#334455 ctermbg=238 gui=none

hi diffAdded guifg=#55ff55 ctermfg=83 gui=none
hi diffRemoved guifg=#ff5555 ctermfg=203 gui=none
hi diffFileId guifg=#6600aa ctermfg=55 guibg=#ddbbee ctermbg=183 gui=none
hi diffFile guifg=#999999 ctermfg=246 gui=none
hi diffOldFile guifg=#99ff99 ctermfg=120 gui=none
hi diffNewFile guifg=#ff9999 ctermfg=210 gui=none

hi Keyword guifg=#88ffff ctermfg=123
