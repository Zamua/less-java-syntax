" Vim syntax file
" Language: less-java
" Maintainer: Zamua Nasrawt
" Latest Revision: 17 October 2016

if exists("b:current_syntax")
  finish
endif

" Keywords
syn keyword ljStatement if else while return continue break test

" Comments
syn keyword ljTodo contained TODO
syn match ljComment '//.*$' contains=ljTodo
syn region ljBlockComment start="/\*" end="\*/" contains=ljTodo

" Literals
syn match ljConstant 'true\|false\|\d\+'
" Strings
syn region ljString start=/\v"/ skip=/\v\\./ end=/\v"/

let b:current_syntax="lj"

hi def link ljStatement    Statement
hi def link ljTodo         Todo
hi def link ljComment      Comment
hi def link ljBlockComment Comment
hi def link ljConstant     Constant
hi def link ljString       String
