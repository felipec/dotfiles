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
set termguicolors

set expandtab
set tabstop=2
set shiftwidth=0
set textwidth=0

set relativenumber

set noshelltemp " retard vim

set showbreak=↪
set fillchars+=vert:\ 
set listchars=tab:»\ ,trail:∙,nbsp:␣
set listchars+=eol:↲,extends:❯,precedes:❮

runtime lightline_config.vim
runtime syntax_groups.vim

let g:ale_linters = { 'c': ['gcc'], 'asm': ['nasm'] }
let g:ale_c_parse_makefile = 1
let g:ale_html_tidy_options = '-q -e -config ~/.config/tidy.conf'
