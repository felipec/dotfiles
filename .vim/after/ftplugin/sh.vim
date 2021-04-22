if expand('%:p') =~# '/git-completion/'
  setl noet ts=8
elseif expand('%:p') =~# '/git/'
  setl noet ts=8
endif
