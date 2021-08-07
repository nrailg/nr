syntax match pyFunction display "\w\+\s*("ms=s,me=e-1
highlight def link pyFunction Function

nnoremap <buffer> <C-G>     :!grep -n <C-R>=expand("<cword>")<CR>
      \ `find -name '*.py'`

set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=2
