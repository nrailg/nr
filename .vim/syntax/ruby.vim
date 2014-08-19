setlocal re=1
setlocal ttyfast
setlocal lazyredraw

nnoremap <buffer> <F5>    :w<CR>:! ruby -w %<CR>
nnoremap <buffer> <F6>    :w<CR>:! rails server<CR>
