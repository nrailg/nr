set shiftwidth=4
set tabstop=4
set expandtab

syntax match _jFunction display "\w\+\s*("ms=s,me=e-1
highlight def link _jFunction Function

syntax match _jMacro display "\<[A-Z_][A-Z0-9_]\+\>"
highlight def link _jMacro Constant

syntax match _jOperator display "[-|!%&*+=<>/;,.]"
highlight def link _jOperator Keyword

syntax match _jClass display "\<[A-Z]\w\+\>"
highlight def link _jClass Type
