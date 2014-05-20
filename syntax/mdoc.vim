" Faust (MathDoc) syntax file
" Language:	Faust - http://faust.grame.fr
" Creator:      Griffin Moe <me@griffinmoe.com>
" Homepage:     http://github.com/gmoe/vim-faust
" Version:	1.0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MathDoc XML tags
" The highlighting for listing is incomplete...
syn match mdocTags +</\?mdoc>+ 
syn match mdocTags +</\?equation>+ 
syn match mdocTags +</\?diagram>+ 
syn match mdocTags +</\?metadata>+ 
syn region mdocTags start=+<listing+ end=+/>+
syn region mdocTags start=+<notice+ end=+/>+

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MathDoc LaTeX directives
syn region mdocLatex start="\\" end="}" keepend extend contains=latexText
syn region latexText start="{" end="}" 

" Define colors
hi link mdocTags    Comment
hi link mdocLatex   Comment
hi link latexText   Ignore
