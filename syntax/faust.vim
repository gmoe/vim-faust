" Faust syntax file
" Language:	Faust - http://faust.grame.fr
" Creator:	Bjoern Lindig <kebjoern@yahoo.de>
" Maintainer:   Griffin Moe <me@griffinmoe.com>
" Homepage:     http://github.com/gmoe/vim-faust
" Version:	1.0

if exists("b:current_syntax")
  finish
endif

syn clear

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Faust Primitives
syn keyword fstPrims mem prefix int float rdtable rwtable select2 select3 ffunction 
syn keyword fstPrims fconstant fvariable acos asin atan atan2 cos sin tan exp log 
syn keyword fstPrims log10 pow sqrt abs fabsf min max fmod remainder floor ceil rint

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Faust User Interface Elements
syn keyword fstUIElements button checkbox vslider hslider nentry vgroup hgroup tgroup 
syn keyword fstUIElements vbargraph hbargraph attach

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Faust Meta
syn keyword fstPreProc declare import library component environment 

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Faust Operators
syn keyword fstOps process with case seq par sum prod 

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Faust Operators "TODO": Improve this...
syn match fstOperator   "@"
syn match fstOperator	"_" 
syn match fstOperator	"!" 
syn match fstOperator	"+" 
syn match fstOperator	"-" 
syn match fstOperator	"*" 
syn match fstOperator	"/" 
syn match fstOperator	"%" 
syn match fstOperator	"<" 
syn match fstOperator	">" 
syn match fstOperator	">=" 
syn match fstOperator	"<=" 
syn match fstOperator	"!=" 
syn match fstOperator	"==" 
syn match fstOperator	"&" 
syn match fstOperator	"\^" 
syn match fstOperator	"|" 
syn match fstOperator	"<<" 
syn match fstOperator	">>" 
syn match fstOperator	":" 
syn match fstOperator	"," 
syn match fstOperator	"<:" 
syn match fstOperator	":>" 
syn match fstOperator	"\~" 

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Faust Brackets
syn match fstAoperator	"(" 
syn match fstAoperator	")" 
syn match fstAoperator  "="

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Faust Comments
syn match	fstComment	"//.*$"
syn region	fstComment	start="/\*" end="\*/" contains=fstOperator keepend extend

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" String
syn region fstString	start=+"+ skip=+\\\\\|\\"+ end=+"+ contains=fstStringMeta keepend
syn region fstStringMeta start=+\[+ end=+\]+

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Numbers
syn match fstNumber "\<\d\+\(\.\d\+\)\=\>"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Faust MathDoc
syn include @MDoc <sfile>:p:h/mdoc.vim
syn region  fstMDoc     start=+<mdoc>+ end=+</mdoc>+ fold keepend contains=@MDoc

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Color Definitions
let b:current_syntax = "faust"

hi link fstPreProc      PreProc
hi link fstMDoc         Ignore
hi link fstComment	Comment
hi link fstAoperator	Special
hi link fstUIElements   Function
hi link fstPrims	Label
hi link fstOps		Type
hi link fstOperator	Keyword
hi link fstString	String
hi link fstStringMeta   Underlined
hi link fstNumber       Number
hi link fstFloat        Float
