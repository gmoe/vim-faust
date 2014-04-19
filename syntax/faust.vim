" Faust syntax file
" Language:	Faust - http://faust.grame.fr
" Creator:	Bjoern Lindig <kebjoern@yahoo.de>
" Maintainer:   Griffin Moe <me@griffinmoe.com>
" Version:	0.1

" remove any old syntax stuff hanging around
syn clear

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" faust primitives
" the list is taken from the faust.xml file writen for the kate-editor and may
" not be complete
syn keyword fstPrims mem prefix int float rdtable rwtable select2 select3 ffunction fconstant fvariable button checkbox vslider hslider nentry vgroup hgroup tgroup vbargraph hbargraph attach acos asin atan atan2 cos sin tan exp log log10 pow sqrt abs min max fmod remainder floor ceil rint

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" faust operators
syn keyword fstOps process with case seq par sum prod import component library environment declare

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" faust comments
syn match	fstComment	"//.*$"
syn region	fstComment	start="/\*" end="\*/" contains=fstOperator keepend extend

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" faust operators 
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

" String
syn region fstString	start=+"+ skip=+\\\\\|\\"+ end=+"+

" Integer with - + or nothing in front
syn match fstNumber '\d\+'
syn match fstNumber '[-+]\d\+'

" Floating point number with decimal no E or e (+,-)
syn match fstFloat '\d\+\.\d*'
syn match fstFloat '[-+]\d\+\.\d*'

" Color definition
hi link fstAoperator	Statement
hi link fstPrims	Label
hi link fstOps		Identifier
hi link fstOperator	Special
hi link fstComment	Comment
hi link fstString	String
hi link fstNumber       Number
hi link fstFloat        Float

" The name of the syntax is faust
let b:current_syntax = "faust"
