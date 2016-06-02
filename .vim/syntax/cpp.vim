" Highlight

set shiftwidth=2
set tabstop=2
set expandtab

syntax match _ccClass display "\<[A-Z]\w\+\>"
highlight def link _ccClass Type

syntax match _ccNamespace display "\w\+\s*::"ms=s,me=e-2
highlight def link _ccNamespace Type

syntax match _ccStringClass display "\<string\>"
highlight def link _ccStringClass _ccClass

syntax match _ccVectorClass display "\<vector\>"
highlight def link _ccVectorClass _ccClass
