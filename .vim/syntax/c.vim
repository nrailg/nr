" Syntax

syntax match _cFunction display "\w\+\s*("ms=s,me=e-1
highlight def link _cFunction Function

syntax match _cDefType display "\<\w\{1,}_t\>"
highlight def link _cDefType Type

syntax match _cMacro display "\<[A-Z_][A-Z0-9_]\+\>"
highlight def link _cMacro Constant

setlocal keywordprg=man\ -s\ 2,3,7
set path+=include
