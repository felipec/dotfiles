syntax enable
filetype plugin indent on

set hlsearch
set incsearch
set nobackup
set guifont=Monospace\ 10
set guioptions=a
set history=1000
set diffopt=filler
set clipboard=unnamedplus
set laststatus=2
set noswapfile
set nofixeol
set wildmenu
set display=truncate
set scrolloff=5

set expandtab
set tabstop=2
set shiftwidth=0
set textwidth=100

colorscheme felipec

set formatoptions+=n

set showbreak=↪
set fillchars+=vert:\ 
set listchars=tab:»\ ,trail:∙,nbsp:␣
set listchars+=eol:↲,extends:❯,precedes:❮

set lines=40 columns=120

let g:netrw_browsex_viewer = 'brave'

let g:syntastic_ruby_mri_args = '-W1 -c'

runtime lightline_config.vim
runtime syntax_groups.vim
runtime load_cscope.vim
