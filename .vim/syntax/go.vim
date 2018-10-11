set shiftwidth=4
set tabstop=4

syntax match _goFunction display "\w\+\s*("ms=s,me=e-1
highlight def link _goFunction Function

syntax match _goClass display "\<[A-Z]\w\+\>"
highlight def link _goClass Type
