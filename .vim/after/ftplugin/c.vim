setl noet ts=8
setl cino=(s,:0,l1

if expand('%:p') =~# '/notmuch/'
  setl noet sw=4 sts=-1
  setl cino+=(0
elseif expand('%:p') =~# '/.*xfce.*/'
  setl et ts=2
  setl cino+=(0
end
