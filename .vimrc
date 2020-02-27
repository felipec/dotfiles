syntax enable
set hlsearch
set bs=2
set ruler

filetype plugin indent on

set incsearch
set nobackup
set guifont=Monospace\ 12
set guioptions=ai
set hi=1000
set diffopt=filler
set clipboard=unnamedplus
set laststatus=2
set noswapfile

set expandtab
set shiftwidth=2
set tabstop=2

colorscheme felipec

set fo=tcqn

set showbreak=↪
set fillchars+=vert:\ 
set listchars=tab:»\ ,trail:∙,nbsp:␣
set listchars+=eol:↲,extends:❯,precedes:❮

if has("gui_running")
  set lines=40 columns=120
endif

au! BufRead,BufNewFile *linux*/*.[ch] source ~/.vim/after/ftplugin/c-linux.vim
au! BufRead,BufNewFile *git/Documentation/*.txt set ft=asciidoc
au! BufRead,BufNewFile *.t set ft=sharness

au! BufRead,BufNewFile *notmuch/*.[ch] source ~/.vim/after/ftplugin/c-notmuch.vim

let g:netrw_browsex_viewer = 'chromium'

let g:syntastic_ruby_mri_args = '-W1 -c'

runtime syntax_groups.vim

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
