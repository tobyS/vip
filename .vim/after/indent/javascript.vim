" !! THIS FILE NEEDS TO BE IN THE "after" DIRECTORY BECAUSE IT IS OVERRIDDEN BY
" !! SYSTEM DEFAULT FILES OTHERWISE

" Disabling language based indentation rules
" The ending space is neccessary
setlocal indentexpr= 

" Disable cindent as it somehow disturbs the correct js indentation
setlocal nocindent

" Enable indentation copy and smart indentation after c-style blocks instead
setlocal autoindent
setlocal smartindent
