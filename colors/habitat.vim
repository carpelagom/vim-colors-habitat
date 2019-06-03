" Maintainer:		nklas
" Version:      0.0.3
" Last Change:	2019-06-03
" Credits:      This is a modification of hornet.vim color scheme

set background=dark
hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "habitat"


" General colors --------------------------------------------------------------

hi Cursor                               guifg=#000000   guibg=#ffffff   gui=none
hi Normal                               guifg=#e2e2e5   guibg=#252525   gui=none
hi NonText                              guifg=#303030   guibg=#252525   gui=none
hi LineNr                               guifg=#303030   guibg=#252525   gui=none
"hi StatusLine                           guifg=#f6f3e8   guibg=#857b6f   gui=none
"hi StatusLineNC                         guifg=#303030   guibg=#252525   gui=none
hi StatusLine                           guifg=#ffffff   guibg=#252525   gui=bold
hi StatusLineNC                         guifg=#909090   guibg=#252525   gui=none
hi VertSplit                            guifg=#202020   guibg=#252525   gui=none
hi Folded                               guifg=#909090   guibg=#404040   gui=none
hi FoldColumn                           guifg=#ffffff   guibg=#303030   gui=none
hi Title                                guifg=#f6f3e8                   gui=none
hi Visual                               guifg=#555555   guibg=#353535   gui=none
"hi SpecialKey                           guifg=#303030   guibg=#212121   gui=none
hi SpecialKey                           guifg=#ffc4b5   guibg=#212121   gui=none
hi Directory                            guifg=#857b6f                   gui=none
hi ColorColumn                                          guibg=#232323
"hi TabLine                              guifg=#303030   guibg=#303030   gui=none
hi TabLine                              guifg=#e2e2e5   guibg=#252525   gui=none
hi TabLineSel                           guifg=#ffffff   guibg=#252525   gui=bold
"hi TabLineSel                           guifg=#ffffff   guibg=#eb9a00   gui=bold
hi TabLineFill                          guifg=#ffffff   guibg=#252525   gui=none
hi SignColumn                           guifg=#252525   guibg=#252525   gui=none

" Syntax highlighting ---------------------------------------------------------

hi Comment                              guifg=#404040                   gui=none
"hi Comment                              guifg=#7fc6bc                    gui=none
hi Todo                                 guifg=#fec135                   gui=none
hi Boolean                              guifg=#b1d631                   gui=none
hi String                               guifg=#faf4c6                   gui=none
hi Identifier                           guifg=#b1d631                   gui=none
hi Function                             guifg=#fdb32a                   gui=none
hi Type                                 guifg=#7e8aa2                   gui=none
hi Statement                            guifg=#7e8aa2                   gui=none
hi Keyword                              guifg=#ff9800                   gui=none
hi Constant                             guifg=#e5786d                   gui=none
hi Number                               guifg=#ff9800                   gui=none
hi Special                              guifg=#c0e5f1                   gui=none
hi PreProc                              guifg=#9b8595                   gui=none
hi Todo                                 guifg=#fec135   guibg=#252525   gui=none
hi Search                               guifg=#aa98ff		guibg=#151515   gui=none

" Vim >= 7.0 specific colors --------------------------------------------------

if version >= 700
    hi CursorLine																				guibg=#303030		gui=none
    hi CursorLineNr                     guifg=#ffffff		guibg=#252525   gui=none
    hi CursorColumn																			guibg=#222222		gui=none
    hi MatchParen                       guifg=#e7f6da   guibg=#303030   gui=none
    hi Pmenu                            guifg=#857b6f		guibg=#000000		gui=none
    hi PmenuSel                         guifg=#ff9800		guibg=#303030		gui=none
    hi PmenuSbar                        guifg=#857b6f   guibg=#101010
	hi PmenuThumb													guifg=#857b6f		guibg=#101010
endif

hi link TabLine Pmenu
hi link TabLineSel PmenuSel

" Code-specific colors --------------------------------------------------------

" Markdown

hi link markdownCodeDelimiter Comment
" Makefile

hi link makeTarget Directory
hi link makeCommands Normal
hi link makeIdent Type
hi link makeDString String
hi link makeSpecial PreProc

" ViM Help
hi link helpSectionDelim Comment
hi link helpBar Number
hi link helpHyperTextJump Constant
hi link helpNotVi Directory
hi link helpSpecial Special

" Sass
hi link sassId String
hi link sassIdChar String
hi link sassClass Directory
hi link sassClassChar Directory
hi link sassProperty Directory
hi link sassVariable Type
hi link sassInterpolation cssPseudoClassId
hi link sassInterpolationDelimiter Comment

" CSS
hi link style Directory
hi link cssNoise Comment
hi link cssComment Comment
hi link cssAttrComma cssNoise
hi link cssAttrRegion Constant
hi link cssClassName htmlArg
hi link cssClassNameDot cssClassName
hi link cssTagName htmlArg
hi link cssIdentifier htmlArg
hi link cssBraces cssNoise
hi link cssColorProp Directory
hi link cssBoxProp Directory
hi link cssPageProp Directory
hi link cssFlexibleBoxProp Directory
hi link cssMediaProp Directory
hi link cssUiProp Directory
hi link cssTextProp Directory
hi link cssDeprecated cssTextProp
hi link cssDimensionProp cssTextProp
hi link cssFontProp cssTextProp
hi link cssVendor cssTextProp
hi link cssStyle cssTextProp
hi link cssPositioningProp cssTextProp
hi link cssTransitionProp cssTextProp
hi link cssRenderProp cssTextProp
hi link cssPseudoClass Directorty
hi link cssGeneratedContentProp Directory
hi link cssValueLength Number
hi link cssColor Constant
hi link cssSelectorOp Directory
hi link cssSelectorOp2 Directory
hi link cssMediaComma Directory
hi link cssImportant Search

" Stylus
hi link stylusIdChar Keyword
hi link stylusId Keyword
hi link cssBoxProp Directory
hi link cssBackgroundProp Directory
hi link cssColorProp Directory
hi link cssBorderProp Directory
hi link cssVisualProp Directory
hi link cssListProp Directory
hi link cssFontProp Directory
hi link cssTextProp Directory
hi link cssCommonProp Directory
hi link cssSpecialProp Directory

hi link cssColorVal Constant
hi link cssVisualVal Constant
hi link cssTextVal Constant
hi link cssListVal Constant
hi link cssFontVal Constant
hi link cssBorderVal Constant
hi link cssCommonVal Constant

hi link stylusVariable Constant
hi link stylusProperty Comment

hi link stylusClassChar String
hi link stylusClass String

hi link stylusIdChar String
hi link stylusId String

hi link stylusCssAttribute Comment
hi link stylusVariableAssignment Comment

" HTML & DJANGO TEMPLATES
hi link htmlTag Directory
hi link htmlEndTag Directory
hi link htmlTagName Directory
hi link htmlTagN htmlTagName
hi link htmlArg Type
hi link htmlString String
hi link htmlSpecialChar Keyword

hi link djangoTagBlock Constant
hi djangoStatement guifg=#de6446
hi link djangoVarBlock djangoStatement
hi link djangoFilter Keyword

" JAVASCRIPT
hi link javascript Directory
hi link javascriptIdentifier Type
hi link javascriptBraces Directory
hi link javascriptBoolean Constant
hi link javascriptGlobal Constant
hi link javascriptStringS djangoStatement
hi link javascriptStringD djangoStatement
hi link javascriptMember Normal
hi link javascriptParens javascriptBraces
hi link javascriptNumber Number

" Python
hi pythonImport     guifg=#7fc6bc gui=none
hi pythonException  guifg=#aeee00 gui=none
hi pythonOperator   guifg=#7e8aa2 gui=none
hi pythonExClass    guifg=#009000 gui=none
hi pythonStatement  guifg=#857b6f
hi link pythonPreCondit pythonStatement
hi link pythonComment pythonImport
hi link pythonCoding pythonComment
hi link pythonDecorator pythonImport
hi link pythonDottedName pythonImport
hi link pythonString String
hi pythonConditional guifg=#7e8aa2
hi link pythonStatement pythonComment
hi pythonFunction guifg=#e1d0be
hi link pythonBuiltinFunc Normal

" ViM
hi vimCommand       guifg=#808080
hi vimMap           guifg=#808080
hi vimMapLhs        guifg=#857b6f
hi vimMapRhs        guifg=#857b6f
hi vimMapModKey     guifg=#e5786d
hi vimOption        guifg=#857b6f
hi vimFTOption      guifg=#857b6f
hi vimFunction      guifg=#aa6600
hi vimFuncName      guifg=#857b6f
hi link vimFuncSid vimMapModKey
hi link vimFuncVar vimFuncName
hi link vimFuncBody vimFuncName
hi vimParenSep      guifg=#857b6f
hi vimSep           guifg=#e7f6da
hi vimNotation      guifg=#857b6f
hi vimBracket       guifg=#404040
hi vimUserCmd       guifg=#e5786d
hi link vimSynType vimOption
hi link vimOper vimBracket
hi link vimContinue VimOper
hi link vimHiGroup vimOption
hi link vimGroup vimOption
hi link vimHiGuiFgBg vimHighlight
hi link vimHiGui vimHighlight
hi link vimHiCtermFgBg vimHighlight
hi link vimHiGuiRgb vimString
hi link vimHiAttrib vimString
hi link vimSetEqual vimSet
hi link vimVar vimHiGroup
hi link vimEnvvar vimOption
hi link vimAutoEvent vimOption
hi link vimSubstPat vimFuncSID
hi link vimSubstDelim vimOper
hi link vimAddress vimOper
hi link vimSubstFlags Type
hi link vimCommentTitle vimLineComment
"hi vimCommentTitle gui=underline

hi link helpExample Function
hi link helpIgnore Comment
hi link helpBar helpIgnore
hi link helpStar helpIgnore
hi link helpSpecial Identifier
hi link helpHyperTextEntry Directory
hi link helpNote String


" Coffeescript
hi coffeeKeyword    guifg=#857b6f
hi coffeeObjAssign  guifg=#939395
hi coffeeSpecialVar guifg=#e7f6da
hi link coffeeSpecialOp Directory
hi coffeeParen      guifg=#857b6f
hi link coffeeString String
hi coffeeInterpDelim guifg=#ff9800
hi link coffeeConstant Constant
hi link coffeeCurly Directory
hi link coffeeBoolean Type

hi link NERDTreeDirSlash Comment
hi link NERDTreeHelpTitle Comment

" VimWiki
hi link VimWikiPre Comment

" CtrlP
" TODO: Make CtrlP match the rest
"hi link CtrlPMode1 Directory
"hi link CtrlPMode2 Special
"hi link CtrlPStats Normal
"hi link CtrlPPrtBase Normal
"hi link CtrlPMatch Number

hi link ngxDirective Directory
hi link ngxDirectiveImportant Directory
hi link ngxDirectiveError Directory
hi link ngxVariable Function
hi link ngxBoolean String
