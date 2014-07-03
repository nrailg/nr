syntax match pyFunction display "\w\+\s*("ms=s,me=e-1
hi def link pyFunction Function

syntax match PyMacro_ display "\<[A-Z_][A-Z0-9_]\+\>"
highlight def link PyMacro_ Constant

setlocal tags+=~/.vim/tags/python27.tags,~/.vim/tags/python27-local.tags

nnoremap <buffer> <F5>    :w<CR>:! python2.7 main.py<CR>
