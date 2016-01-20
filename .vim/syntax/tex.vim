setlocal shiftwidth=4
setlocal tabstop=4
"setlocal grepprg=grep\ -nH\ $*

"let g:tex_flavor='latex'

nnoremap <buffer> <F5> :w<CR>:!xelatex -synctex=1 -interaction=nonstopmode %<CR>
nnoremap <buffer> <F6> :!evince %:r.pdf<CR>
