syntax on
set hlsearch
set bs=2
set ruler

filetype plugin indent on

set incsearch
set nobackup
set gfn=Inconsolata\ 12
set hi=1000
set diffopt=filler

colorscheme felipec

if has("cscope")
	set cscopetag
	set cscopequickfix=s-,c-,d-,i-,t-,e-
	set nocscopeverbose

	" set nocscopeverbose
	" cs add /home/felipec/cscope/cscope.out
	" set cscopeverbose
	nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
	nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
	nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
	nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>
	nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
	nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
	nmap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
	nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>
endif

au! BufRead,BufNewFile ~/.mutt/* setfiletype muttrc
au! BufRead,BufNewFile *msn-pecan/*.[ch] source ~/.vim/after/ftplugin/c-old.vim
au! BufRead,BufNewFile *notmuch/*.[ch] source ~/.vim/after/ftplugin/c-nmm.vim
au! BufRead,BufNewFile *linux*/*.[ch] source ~/.vim/after/ftplugin/c-linux.vim
au! BufRead,BufNewFile *lastfm*/*.[ch] source ~/.vim/after/ftplugin/c-gnome.vim
au! BufRead,BufNewFile *audio_test*/*.[ch] source ~/.vim/after/ftplugin/c-linux.vim
au! BufRead,BufNewFile *userspace-dspbridge/*.[ch] source ~/.vim/after/ftplugin/c-bridge.vim

au! BufRead,BufNewFile *.vala setfiletype vala
au! BufRead,BufNewFile *.vapi setfiletype vala
