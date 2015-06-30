""""""""""""""""""""""""""""""
" Matlab specific configures "
""""""""""""""""""""""""""""""

set expandtab
set shiftwidth=4
set tabstop=4

syntax match _mFunction display "\w\+\s*("ms=s,me=e-1
highlight def link _mFunction Function

syntax match _mOperator display "[-|!%&*+=<>/;,.]"
highlight def link _mOperator Keyword
