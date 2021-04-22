if has("cscope")
  set cscopetag

  if filereadable("cscope.out")
    cs add cscope.out
  endif

  nmap <C-.>s :tab cs find s <C-R>=expand("<cword>")<CR><CR>
  nmap <C-.>g :tab cs find g <C-R>=expand("<cword>")<CR><CR>
  nmap <C-.>c :tab cs find c <C-R>=expand("<cword>")<CR><CR>
  nmap <C-.>t :tab cs find t <C-R>=expand("<cword>")<CR><CR>
  nmap <C-.>e :tab cs find e <C-R>=expand("<cword>")<CR><CR>
  nmap <C-.>f :tab cs find f <C-R>=expand("<cfile>")<CR><CR>
  nmap <C-.>i :tab cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
  nmap <C-.>d :tab cs find d <C-R>=expand("<cword>")<CR><CR>

  nmap <C-@>s :scs find s <C-R>=expand("<cword>")<CR><CR>
  nmap <C-@>g :scs find g <C-R>=expand("<cword>")<CR><CR>
  nmap <C-@>c :scs find c <C-R>=expand("<cword>")<CR><CR>
  nmap <C-@>t :scs find t <C-R>=expand("<cword>")<CR><CR>
  nmap <C-@>e :scs find e <C-R>=expand("<cword>")<CR><CR>
  nmap <C-@>f :scs find f <C-R>=expand("<cfile>")<CR><CR>
  nmap <C-@>i :scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
  nmap <C-@>d :scs find d <C-R>=expand("<cword>")<CR><CR>

endif
