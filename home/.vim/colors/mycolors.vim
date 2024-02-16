if exists("syntax_on")
    syntax reset
endif

let colors_name="mycolors"
set background=dark

hi clear
hi clear VisualNOS

hi Normal                   ctermfg=7

hi StatusLine               ctermfg=244 ctermbg=233 cterm=none
hi StatusLineNC             ctermfg=244 ctermbg=0   cterm=none
hi VertSplit                ctermfg=24  ctermbg=0   cterm=none
hi LineNr                   ctermfg=240 ctermbg=233 cterm=none
hi SpecialKey               ctermfg=240

hi IndentGuidesEven         ctermbg=233 cterm=none

hi TabLine                  ctermfg=255 ctermbg=24  cterm=none
hi TabLineSel               ctermfg=255 ctermbg=0   cterm=none
hi clear TabLineFill
hi link TabLineFill TabLine

hi SignColumn               ctermfg=244 ctermbg=232
hi GitGutterAdd             ctermfg=34  ctermbg=232
hi GitGutterDelete          ctermfg=124 ctermbg=232
hi GitGutterChange          ctermfg=142 ctermbg=232
hi GitGutterChangeDelete    ctermfg=208 ctermbg=232

hi Pmenu                    ctermfg=7   ctermbg=236
hi PmenuSel                 ctermfg=231 ctermbg=23
hi PmenuSbar                ctermbg=200
hi PmenuThumb               cterm=reverse

hi IncSearch                term=reverse cterm=reverse gui=reverse
hi Search                   term=reverse ctermfg=0 ctermbg=11 guifg=Black guibg=Yellow

hi DiffAdd                  ctermbg=4
hi DiffChange               ctermbg=5
hi DiffDelete               ctermfg=12 ctermbg=6
hi DiffText                 ctermbg=1 cterm=bold

hi Folded                   term=standout ctermfg=14 ctermbg=242 guifg=Cyan guibg=DarkGrey
hi FoldColumn               term=standout ctermfg=14 ctermbg=242 guifg=Cyan guibg=Grey

hi Error                    term=reverse ctermfg=15 ctermbg=9 guifg=White guibg=Red
hi Todo                     term=standout ctermfg=0 ctermbg=11 guifg=Blue guibg=Yellow

hi ErrorMsg                 term=standout ctermfg=15 ctermbg=1 guifg=White guibg=Red
hi ModeMsg                  term=bold cterm=bold gui=bold
hi MoreMsg                  term=bold ctermfg=121 gui=bold guifg=SeaGreen
hi WarningMsg               term=standout ctermfg=224 guifg=Red

hi Conceal                  ctermfg=7 ctermbg=242 guifg=LightGrey guibg=DarkGrey
hi WildMenu                 term=standout ctermfg=0 ctermbg=11 guifg=Black guibg=Yellow
hi Visual                   term=reverse ctermbg=242 guibg=DarkGrey

hi NonText                  term=bold ctermfg=12 gui=bold guifg=Blue
hi Directory                term=bold ctermfg=159 guifg=Cyan
hi Question                 term=standout ctermfg=121 gui=bold guifg=Green
hi Title                    term=bold ctermfg=225 gui=bold guifg=Magenta
hi SpellBad                 term=reverse ctermbg=9 gui=undercurl guisp=Red
hi SpellCap                 term=reverse ctermbg=12 gui=undercurl guisp=Blue
hi SpellRare                term=reverse ctermbg=13 gui=undercurl guisp=Magenta
hi SpellLocal               term=underline ctermbg=14 gui=undercurl guisp=Cyan
hi CursorColumn             term=reverse ctermbg=242 guibg=Grey40
hi CursorLine               term=underline cterm=underline guibg=Grey40
hi ColorColumn              term=reverse ctermbg=1 guibg=DarkRed
hi MatchParen               term=reverse ctermbg=6 guibg=DarkCyan
hi Comment                  term=bold ctermfg=14 guifg=#80a0ff
hi Constant                 term=underline ctermfg=13 guifg=#ffa0a0
hi Special                  term=bold ctermfg=224 guifg=Orange
hi Identifier               term=underline cterm=bold ctermfg=14 guifg=#40ffff
hi Statement                term=bold ctermfg=11 gui=bold guifg=#ffff60
hi PreProc                  term=underline ctermfg=81 guifg=#ff80ff
hi Type                     term=underline ctermfg=121 gui=bold guifg=#60ff60
hi Underlined               term=underline cterm=underline ctermfg=81 gui=underline guifg=#80a0ff
hi Ignore                   ctermfg=0 guifg=bg

hi DbgCurrentSign           term=reverse ctermfg=15 ctermbg=9 guifg=#ffffff guibg=#ff0000
hi DbgCurrentLine           term=reverse ctermfg=15 ctermbg=9 guifg=#ffffff guibg=#ff0000
hi DbgBreakptSign           term=reverse ctermfg=15 ctermbg=10 guifg=#ffffff guibg=#00ff00
hi DbgBreakptLine           term=reverse ctermfg=15 ctermbg=10 guifg=#ffffff guibg=#00ff00

" GitGutterAddDefault xxx cleared
" GitGutterChangeDefault xxx cleared
" GitGutterDeleteDefault xxx cleared
" GitGutterChangeDeleteDefault xxx links to GitGutterChangeDefault
" GitGutterAddInvisible xxx cleared
" GitGutterChangeInvisible xxx cleared
" GitGutterDeleteInvisible xxx cleared
" GitGutterChangeDeleteInvisible xxx links to GitGutterChangeInvisble
" GitGutterChangeInvisble xxx cleared
" GitGutterAdd   xxx links to GitGutterAddDefault
" GitGutterChange xxx links to GitGutterChangeDefault
" GitGutterDelete xxx links to GitGutterDeleteDefault
" GitGutterChangeDelete xxx links to GitGutterChangeDeleteDefault
" GitGutterAddLine xxx links to DiffAdd
" GitGutterChangeLine xxx links to DiffChange
" GitGutterDeleteLine xxx links to DiffDelete
" GitGutterChangeDeleteLine xxx links to GitGutterChangeLineDefault
" GitGutterChangeLineDefault xxx cleared
