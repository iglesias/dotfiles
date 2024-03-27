if exists('b:current_syntax') | finish |  endif

syntax keyword codeqlKeyword  select where
syntax keyword codeqlLogic    and not or
syntax match   codeqlComment "//.*$" contains=@Spell
syntax region  codeqlComment start="/\*" end="\*/" contains=@Spell

highlight default link codeqlKeyword  Keyword
highlight default link codeqlLogic    Keyword
highlight default link codeqlComment  Comment

syntax region  codeqlVarDecl1        start=/\v\s*exists\(/ end=/|/ keepend contains=codeqlVarDeclMod,codeqlVarDeclType
syntax region  codeqlVarDecl2        start=/\v\s*from\s+/ end=/where/ end=/select/ keepend contains=codeqlVarDeclMod,codeqlVarDeclType
syntax keyword codeqlVarDeclMod      exists from select where contained

let b:current_syntax = "codeql"
