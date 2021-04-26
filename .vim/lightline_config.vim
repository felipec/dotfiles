let g:lightline = {
  \   'colorscheme': 'felipec',
  \   'active': {
  \     'left': [ [ 'mode', 'paste' ], [ 'readonly', 'relativepath', 'modified' ] ],
  \     'right': [ [ 'percent' ], [ 'lineinfo' ], [ 'filetype' ] ],
  \   },
  \   'inactive': {
  \     'left': [ [ 'relativepath' ] ],
  \     'right': [ [ 'percent' ], [ 'lineinfo' ] ],
  \   },
  \   'tabline': { 'left': [ [ 'tabs' ] ], 'right': [ ] },
  \ }
