" By NR.

syntax match _pFunction display "\w\+\s*("ms=s,me=e-1
highlight def link _pFunction Function

syntax match _pBool display "\<true\|false\>"
highlight def link _pBool Constant

syntax match _pString display "\".\+\""
highlight def link _pString String
