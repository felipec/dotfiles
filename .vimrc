syntax on
filetype plugin indent on

set hlsearch
set clipboard^=unnamedplus
set incsearch
set laststatus=2
set scrolloff=5
set history=200
set nofixeol
set wildmenu
set display=truncate

set formatoptions+=n

colorscheme felipec

set expandtab
set tabstop=2
set shiftwidth=0
set textwidth=100

set noshelltemp " retard vim
set diffopt-=closeoff diffopt-=hiddenoff " git bug

set showbreak=↪
set fillchars+=vert:\ 
set listchars=tab:»\ ,trail:∙,nbsp:␣
set listchars+=eol:↲,extends:❯,precedes:❮

runtime lightline_config.vim
runtime syntax_groups.vim
runtime load_cscope.vim
