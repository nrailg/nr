" Highlight

syntax match cFunction display "\w\+\s*("ms=s,me=e-1
highlight def link cFunction Function

syntax match cDefType display "\<\w\{1,}_t\>"
highlight def link cDefType Type

syntax match cMacro_ display "\<[A-Z_][A-Z0-9_]\+\>"
highlight def link cMacro_ Constant

setlocal keywordprg=man\ -s\ 2,3
setlocal tags+=~/.vim/tags/c.tags,~/.vim/tags/cc.tags

abbreviate szo sizeof(
abbreviate pth pthread_
