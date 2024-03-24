if exists('b:current_syntax') | finish |  endif

syntax keyword codeqlKeyword  select
syntax match   codeqlComment "//.*$" contains=@Spell
syntax region  codeqlComment start="/\*" end="\*/" contains=@Spell

highlight default link codeqlKeyword  Keyword
highlight default link codeqlComment  Comment

let b:current_syntax = "codeql"
