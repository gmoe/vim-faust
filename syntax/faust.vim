" Faust syntax file
" Language:	Faust - http://faust.grame.fr
" Creator:	Bjoern Lindig <kebjoern@yahoo.de>
" Maintainer:   Griffin Moe <me@griffinmoe.com>
" Version:	1.0

" remove any old syntax stuff hanging around
syn clear

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" faust primitives
syn keyword fstPrims mem prefix int float rdtable rwtable select2 select3 ffunction fconstant fvariable acos asin atan atan2 cos sin tan exp log log10 pow sqrt abs fabsf min max fmod remainder floor ceil rint

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" faust user interface elements
syn keyword fstUIElements button checkbox vslider hslider nentry vgroup hgroup tgroup vbargraph hbargraph attach

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" faust meta
syn keyword fstPreProc declare import library component environment 

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" faust operators
syn keyword fstOps process with case seq par sum prod 

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" faust comments
syn match	fstComment	"//.*$"
syn region	fstComment	start="/\*" end="\*/" contains=fstOperator keepend extend

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" faust operators 
syn match fstOperator   "@"
syn match fstOperator	"_" 
syn match fstOperator	"!" 
syn match fstOperator	"+" 
syn match fstOperator	"-" 
syn match fstOperator	"*" 
syn match fstOperator	" / " 
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

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" faust brackets
syn match fstAoperator	"(" 
syn match fstAoperator	")" 

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" String
syn region fstString	start=+"+ skip=+\\\\\|\\"+ end=+"+

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Numbers
syn match fstNumber "\<\d\+\(\.\d\+\)\=\>"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Color definition
let b:current_syntax = "faust"

hi link fstPreProc      PreProc
hi link fstComment	Comment
hi link fstAoperator	Special
hi link fstUIElements   Function
hi link fstPrims	Label
hi link fstOps		Identifier
hi link fstOperator	Keyword
hi link fstString	String
hi link fstNumber       Number
hi link fstFloat        Float
