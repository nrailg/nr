" Syntax

syntax match _luaFunction display "\w\+\s*("ms=s,me=e-1
highlight def link _luaFunction Function

syntax match _luaMacro display "\<[A-Z_][A-Z0-9_]\+\>"
highlight def link _luaMacro Constant
