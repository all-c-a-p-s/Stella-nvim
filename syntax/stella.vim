if exists('b:current_syntax')
    finish
endif

let b:current_syntax = "stella"

"keywords
syn keyword stellaConditional if else
syn keyword stellaRepeat      loop
syn keyword stellaKeyword     break continue let function
syn keyword stellaStorage     mut
syn keyword stellaType        int float bool string byte
syn keyword stellaBoolean     true false
syn keyword stellaTodo        contained TODO FIXME NOTE

"match
syn match stellaBrackets			 '[\[\]{}=]'
syn match stellaBrackets			 ' != '
syn match stellaSign  			 '[+*-]'
syn match stellaSign 			     ' / '
syn match stellaSign  			 '->'
syn match stellaSign  			 '>='
syn match stellaSign  			 ' > '
syn match stellaSign  			 '<='
syn match stellaSign  			 ' < '

"region
syn region stellaString              matchgroup=stellaStringDelimiter start=+b"+ skip=+\\\\\|\\"+ end=+"+ 
syn region stellaString              matchgroup=stellaStringDelimiter start=+"+ skip=+\\\\\|\\"+ end=+"+
syn region stellaCommentLine         start="//" end="$"   contains=stellaTodo

highlight link stellaString               String
highlight link stellaBoolean              Boolean
highlight link stellaSign                 Type
highlight link stellaKeyword              Type
highlight link stellaBrackets             Type
highlight link stellaRepeat               Conditional
highlight link stellaConditional          Conditional
highlight link stellaOperator             Operator
highlight link stellaIdentifier           Identifier
highlight link stellaType                 Boolean
highlight link stellaTodo                 TODO
highlight link stellaStorage              StorageClass
highlight link stellaCommentLine          Comment
