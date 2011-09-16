syntax on
set hlsearch
set bs=2
set ruler

filetype plugin indent on

set incsearch
set nobackup
set guifont=Monospace\ 8
set hi=1000
set diffopt=filler

colorscheme felipec

au! BufRead,BufNewFile ~/.mutt/* setfiletype muttrc
au! BufRead,BufNewFile *msn-pecan/*.[ch] source ~/.vim/after/ftplugin/c-old.vim
au! BufRead,BufNewFile *notmuch/*.[ch] source ~/.vim/after/ftplugin/c-nmm.vim
au! BufRead,BufNewFile *linux*/*.[ch] source ~/.vim/after/ftplugin/c-linux.vim
au! BufRead,BufNewFile *lastfm*/*.[ch] source ~/.vim/after/ftplugin/c-gnome.vim
au! BufRead,BufNewFile *audio_test*/*.[ch] source ~/.vim/after/ftplugin/c-linux.vim
au! BufRead,BufNewFile *userspace-dspbridge/*.[ch] source ~/.vim/after/ftplugin/c-bridge.vim

au! BufRead,BufNewFile *.vala setfiletype vala
au! BufRead,BufNewFile *.vapi setfiletype vala
au! BufRead,BufNewFile *.json setfiletype json

if has("cscope")
    set cscopetag cscopeverbose

    nmap <C-Space>s :cs find s <C-R>=expand("<cword>")<CR><CR>
    nmap <C-Space>g :cs find g <C-R>=expand("<cword>")<CR><CR>
    nmap <C-Space>c :cs find c <C-R>=expand("<cword>")<CR><CR>
    nmap <C-Space>t :cs find t <C-R>=expand("<cword>")<CR><CR>
    nmap <C-Space>e :cs find e <C-R>=expand("<cword>")<CR><CR>
    nmap <C-Space>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
    nmap <C-Space>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
    nmap <C-Space>d :cs find d <C-R>=expand("<cword>")<CR><CR>

    nmap <C-@>s :scs find s <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@>g :scs find g <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@>c :scs find c <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@>t :scs find t <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@>e :scs find e <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@>f :scs find f <C-R>=expand("<cfile>")<CR><CR>
    nmap <C-@>i :scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
    nmap <C-@>d :scs find d <C-R>=expand("<cword>")<CR><CR>

endif
