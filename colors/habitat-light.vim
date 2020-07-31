"################################################################
" Habitat (light)
"################################################################
" Author     nklas
" Description: A light and pleasant colorscheme inspired by the syntax hilightning on vuejs.org

hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "habitat-light"

set background=light

" Color definition
let s:fbeige			= "#A67F5A"
let s:mako				= "#525252"
let s:denim				= "#2C73BB"
let s:nobel				= "#BBB3B3"
let s:elecblue 		= "#0C92E2"
let s:dstorm			= "#F8F8F8"
let s:lavender 		= "#AE81FE"
let s:clementine 	= "#E96901"
let s:cello				= "#35495E"
let s:mint				= "#44B884"
let s:grey				= "#CCCCCC"
let s:white				= "#FAFAFA"
let s:sunsetoc		= "#FE5F57"
let s:daffodil		= "#FBFF31"
let s:blackish		= "#444444"
let s:pastelred   = "#FE6666"

let s:whitespace	= "#BABABA"
let s:accent			= s:mint

" Simplified version (no terminal support) of Steve Losh's function in his colorscheme badwolf:
" https://github.com/sjl/badwolf/blob/master/colors/badwolf.vim
function! s:Hi(name, fg, bg, ...)
	let cmd = 'hi ' . a:name
	if strlen(a:fg)
		let cmd .= ' guifg=' . a:fg . ' '
	endif

	if strlen(a:bg)
		let cmd .= ' guibg=' . a:bg . ' '
	endif

	if a:0 >= 1 && strlen(a:1)
		let cmd .= ' gui=' . a:1
	else
		let cmd .= ' gui=NONE'
	endif

	exec cmd
endfunction

" Highlight groups
call s:Hi("Normal",					s:mako,						s:dstorm,				"NONE")
call s:Hi("NonText",				s:whitespace,			"NONE",					"NONE")
call s:Hi("Special",				s:fbeige,					"NONE",					"NONE")
call s:Hi("SpecialKey",			s:whitespace,			"NONE",					"NONE")
call s:Hi("VertSplit",			s:white,					"bg",						"NONE")
call s:Hi("Directory",			s:fbeige,					"NONE",					"bold")
call s:Hi("LineNr",					s:grey,						"NONE",					"NONE")
call s:Hi("StatusLine",			s:accent,					s:dstorm,				"bold")
call s:Hi("StatusLineNC",		s:dstorm,					s:grey,					"NONE")
call s:Hi("MatchParen",			s:elecblue,				"#FFFFFF",			"bold")
call s:Hi("Todo",						s:blackish,				s:daffodil,			"italic")
call s:Hi("Search",					s:blackish,				s:daffodil,			"NONE")
call s:Hi("CursorLine",			s:mako,						s:white,				"NONE")
call s:Hi("CursorLineNr",		s:accent,					s:white,				"bold")
call s:Hi("Pmenu",					s:mako,						s:grey,					"NONE")
call s:Hi("PmenuSel",				s:white,					s:mint,					"bold")
call s:Hi("Error",					s:pastelred,			"NONE",					"bold")
call s:Hi("Title",					s:pastelred,			"NONE",					"bold")
call s:Hi("ColorColumn",		s:grey,						s:white,				"NONE")
call s:Hi("FoldColumn",			s:mako,						s:white,				"NONE")
call s:Hi("SignColumn",			s:mako,						s:white,				"NONE")
call s:Hi("TabLine",				s:white,					s:grey,					"NONE")
call s:Hi("TabLineSel",			s:accent,					"NONE",					"NONE")
call s:Hi("TabLineFill",		s:white,					s:white,				"NONE")

call s:Hi("Comment",				s:dstorm,					"NONE",					"italic")
call s:Hi("Statement",			s:clementine,			"NONE",					"NONE")
call s:Hi("String",					s:mint,						"NONE",					"NONE")
call s:Hi("Number",					s:lavender,				"NONE",					"NONE")
call s:Hi("Type",						s:denim,					"NONE",					"NONE")
call s:Hi("Identifier",			s:clementine,			"NONE",					"NONE")

" Plugins
" - NERDTree

hi link NERDTreeDir Directory
hi link NERDTreeDirSlash NERDTreeDir
hi link NERDTreeFile Normal
hi link NERDTreeLinkFile Normal
hi link NERDTreeLink Normal
hi link NERDTreeLinkDir Normal
hi link NERDTreeLinkTarget Comment
hi link NERDTreeCurrentNode Error

" - CtrlP
call s:Hi("CtrlPMatch",			s:accent,					"NONE",					"NONE")
call s:Hi("CtrlPMode1",			s:accent,					"NONE",					"NONE")
call s:Hi("CtrlPMode2",			s:denim,					"NONE",					"NONE")
call s:Hi("CtrlPStatus",		s:sunsetoc,				"NONE",					"NONE")

" Highlight links
hi link javascript Normal
hi link javascriptIdentifier Identifier
hi link javascriptString String
hi link javascriptStringS String
hi link javascriptStringD String
hi link javascriptBraces Comment
hi link javascriptBoolean Type
hi link javascriptFunction Type
hi link javascriptGlobal Error

" HTML
hi link htmlTag comment
hi link htmlTagName Type
hi link htmlEndTag Comment
hi link htmlArg Type

call s:Hi("htmlLink", 		s:denim,					"NONE",						"bold")

hi link htmlH1 Normal
hi link htmlH2 Normal
hi link htmlH3 Normal
hi link htmlH4 Normal
hi link htmlH5 Normal
hi link htmlH6 Normal

hi link python Normal
hi link pythonTripleQuotes String
hi link pythonInclude Identifier
hi link pythonString String
hi link pythonNumber Number
hi link pythonFunction Type
hi link pythonBuiltin Type
hi link pythonBoolean Boolean
hi link pythonStatement Directory
hi link pythonDecorator Number
hi link pythonComment Comment


hi link vimCommand Normal
hi link vimHilight String
hi link vimHiGroup String
hi link vimHLGroup String
hi link vimGroup Number
hi link vimParenSep Comment
call s:Hi("vimCommentTitle", 		s:denim,	"NONE", 	"bold")

hi link markdownHeadingDelimiter String
hi link markdownBoldDelimiter Comment
hi link markdownItalicDelimiter Comment

hi link confComment Comment

