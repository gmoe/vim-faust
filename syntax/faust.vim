" Faust syntax file
" Language: Faust - http://faust.grame.fr
" Creator: Bjoern Lindig <kebjoern@yahoo.de>
" Maintainer: Griffin Moe <me@griffinmoe.com>
" Homepage: http://github.com/gmoe/vim-faust
" Version: 1.0

if exists("b:current_syntax")
  finish
endif

syn clear

" Comments ----------------
syntax keyword fstCommentTodo contained TODO FIXME XXX TBD NOTE
syn region fstComment start=+//+ end=/$/ contains=fstCommentTodo
syn region fstComment start="/\*" end="\*/" fold keepend extend contains=fstCommentTodo

" Use Vim-local TeX syntax highlighting in MathDoc blocks. These config
" options are necessary to make TeX styling behave inside the MathDoc fences.
"
" TODO: Do not mess with global TeX config
let g:tex_stylish = 0
let g:tex_no_math = 1
let g:tex_no_error = 1
let g:tex_nospell = 1
let g:tex_fast = 1
syn include @TeX syntax/tex.vim

syn match mdocFence +</\?mdoc>+ containedin=fstMDoc contained
syn match mdocTags +</\?equation>+ containedin=fstMDoc contained
syn match mdocTags +</\?diagram>+ containedin=fstMDoc contained
syn match mdocTags +</\?metadata>+ containedin=fstMDoc contained
syn region mdocTags start=+<listing+ end=+/>+
syn region mdocTags start=+<notice+ end=+/>+
syn region fstMDoc start=+<mdoc>+ end=+</mdoc>+ matchgroup=mdocFence fold keepend contains=@TeX,mdocTags

" Primitives --------------
syn match fstNumber "\<\d\+\(\.\d\+\)\=\>"

syn region fstString start=+"+ skip=+\\\\\|\\"+ end=+"+ contains=fstStringMeta keepend
syn region fstStringMeta start=+\[+ end=+\]+ contains=fstSplitMetaSpecifier,fstSubString
syn region fstStringMeta start=+{+ end=+}+ contains=fstSplitMetaSpecifier,fstSubString
syn match fstSplitMetaSpecifier ":" contained
syn region fstSubString start=+'+ skip=+\\\\\|\\'+ end=+'+ contained keepend

syn match fstWaveformAssignment /waveform{[0-9.,]\+}/ contains=fstWaveformSequnce,fstWaveformKeyword
syn region fstWaveformSequence start=/{/ contains=fstNumber skip=/,/ end=/}/ contained
syn keyword fstWaveformKeyword waveform contained nextgroup=fstWaveformSequence

syn match fstSoundfileAssignment /soundfile(.\+)/ contains=fstSoundfilePaths,fstSoundfileKeyword
syn region fstSoundfilePaths start=/(/ end=/)/ contained contains=fstString
syn keyword fstSoundfileKeyword soundfile contained nextgroup=fstSoundfilePaths

" Operations -------------
syn match fstDiagramOp /[,~:]|(:>)|(<:)/ skipwhite skipempty nextgroup=@fstExpression
syn match fstInfixOp /[+\-]/ skipwhite skipempty nextgroup=@fstExpression

" Assignment -------------
syn cluster fstExpression contains=fstNumber,fstVariable,fstInfixOp,fstWaveformSequence
syn region fstAssignment start=+\<.\+=+ end=+.\+;+

" Faust Primitives
syn keyword fstPrimitiveFunctions mem prefix int float rdtable rwtable select2 select3 ffunction
syn keyword fstPrimitiveFunctions fconstant fvariable acos asin atan atan2 cos sin tan exp log
syn keyword fstPrimitiveFunctions log10 pow sqrt abs fabsf min max fmod remainder floor ceil rint

" Faust User Interface Elements
syn keyword fstUIElements button checkbox vslider hslider nentry vgroup hgroup tgroup vbargraph hbargraph attach

" Faust Meta
syn keyword fstPreProc declare import library component environment interface

" Faust Operators
syn keyword fstOps process with case seq par sum prod
" syn match fstOperator /\<[@_!+-/%<>&^|:,~]\>/
" syn match fstOperator /\<(>=)|(<=)|(!=)|(==)|(<<)|(>>)|(<:)|(:>)\>/
" syn match fstOperator "*"

let b:current_syntax = "faust"

" TODO: Remove
hi Test cterm=underline,bold ctermfg=79

hi link fstCommentTodo Todo
hi link fstMDoc Comment
hi link mdocFence Comment
hi link mdocTags SpecialComment

hi link fstWaveformKeyword Type
hi link fstSoundfileKeyword Type

hi link fstPreProc PreProc

hi link fstComment Comment

hi link fstUIElements Function
hi link fstPrimitiveFunctions Function

hi link fstOps Keyword
hi link fstDiagramOp Operator
" hi link fstOperator Statement

hi link fstString String
hi link fstSubString String
hi link fstStringMeta Special
hi link fstSplitMetaSpecifier Delimiter

hi link fstNumber Number
