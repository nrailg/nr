" Highlight

syntax match _cFunction display "\w\+\s*("ms=s,me=e-1
highlight def link _cFunction Function

syntax match _cDefType display "\<\w\{1,}_t\>"
highlight def link _cDefType Type

syntax match _cDefType display "\<\w\{1,}_pt\>"
highlight def link _cDefPointer Type

syntax match _cMacro display "\<[A-Z_][A-Z0-9_]\+\>"
highlight def link _cMacro Constant

syntax match _cOperator display "[-!%&*+=<>/]"
highlight def link _cOperator Keyword

setlocal keywordprg=man\ -s\ 2,3
setlocal tags+=~/.vim/tags/c.tags,~/.vim/tags/cc.tags

abbr szo sizeof(
abbr pth pthread_
