if exists('b:current_syntax') | finish |  endif

syntax keyword codeqlKeyword  select

highlight default link codeqlKeyword  Keyword

let b:current_syntax = "codeql"
