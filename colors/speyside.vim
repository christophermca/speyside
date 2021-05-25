" Author: 'Christopher MCA'
" Site: https:/githubcom/christophermca/speyside
" Version: 2.2.0

"{{{ Colorscheme Setup

highlight clear
if exists("syntax_on")
  syntax reset
endif

let colors_name = "speyside"

if !exists('g:SpeysideColorDictionary')
  exe 'runtime' 'START' '/colors/colorDictionary.vim'
  let s:CoDi = g:SpeysideColorDictionary
endif

if !exists('g:SpeysideLuminosity')
  if exists('g:SpeysideDefaultLuminence')
    let g:SpeysideLuminosity = g:SpeysideDefaultLuminence
  else
    let g:SpeysideLuminosity = 2 "sets to NORMAL
  endif
endif

" Mode {{{
if has("gui_running")
  let s:mode = 'gui'
else
  let s:mode = 'cterm'
endif
"}}}
"}}}
 "Font Styles {{{
  let s:b = 'bold'
  let s:i = 'italic'
  let s:in = 'inverse'
  let s:none = 'NONE'
  let s:r = 'reverse'
  let s:s = 'standout'
  let s:u = 'underline'
  "
  "Build Style Strings {{{
    exe "let s:sty_b = ' " s:mode."=".s:b"'"
    exe "let s:sty_i = ' " s:mode."=".s:i"'"
    exe "let s:sty_in = ' " s:mode."=".s:in"'"
    exe "let s:sty_n = ' " s:mode."=".s:none"'"
    exe "let s:sty_r = ' " s:mode."=".s:r"'"
    exe "let s:sty_s = ' " s:mode."=".s:s"'"
    exe "let s:sty_su = ' " s:mode."=".s:s .s:u"'"
    exe "let s:sty_u = ' " s:mode."=".s:u"'"
  "}}}
"}}}
"Color Palette {{{
"Build Color Strings {{{
"special {{{
exe "let s:fg_NONE = ' "s:mode."fg=".s:none ."'"
exe "let s:bg_NONE = ' "s:mode."bg=".s:none ."'"

exe "let s:fg_diff_add = ' "s:mode."fg=". get(s:CoDi['diffColors'][s:mode], 0) ."'"
exe "let s:bg_diff_add = ' "s:mode."bg=". get(s:CoDi['diffColors'][s:mode], 1) ."'"

exe "let s:fg_diff_del = ' "s:mode."fg=". get(s:CoDi['diffColors'][s:mode], 2) ."'"
exe "let s:bg_diff_del = ' "s:mode."bg=". get(s:CoDi['diffColors'][s:mode], 3) ."'"

exe "let s:fg_difftxt = ' "s:mode."fg=". get(s:CoDi['diffColors'][s:mode], 4) ."'"
exe "let s:bg_difftxt = ' "s:mode."bg=". get(s:CoDi['colorsObj'][s:mode], 4) ."'"

exe "let s:fg_spell_bad = ' "s:mode."fg=". get(s:CoDi['diffColors'][s:mode], 2) ."'"
exe "let s:bg_spell_bad = ' "s:mode."bg=". get(s:CoDi['diffColors'][s:mode], 3) ."'"

exe "let s:fg_spell_cap = ' "s:mode."fg=". get(s:CoDi['diffColors'][s:mode], 0) ."'"
exe "let s:bg_spell_cap = ' "s:mode."bg=". get(s:CoDi['diffColors'][s:mode], 1) ."'"

exe "let s:fg_spell_local = ' "s:mode."fg=". get(s:CoDi['colorsObj'][s:mode], 'color17') ."'"
exe "let s:bg_spell_local = ' "s:mode."bg=". get(s:CoDi['colorsObj'][s:mode], 'color11') ."'"

exe "let s:bg_spell_rare = ' "s:mode."bg=". get(s:CoDi['colorsObj'][s:mode], 'color24') . "'"
"}}}
"
exe "let s:bg_norm = ' "s:mode."bg=" . get(s:CoDi['colorsObj'][s:mode], 'baseBG') ."'"
exe "let s:fg_norm = ' "s:mode."fg=" . get(s:CoDi['colorsObj'][s:mode], 'baseFG') ."'"

exe "let s:fg_black = ' "s:mode . "fg=black" . "'"
exe "let s:bg_black = ' "s:mode . "bg=black" . "'"

exe "let s:fg_white = ' "s:mode . "fg=white" . "'"
exe "let s:bg_white = ' "s:mode . "bg=white" . "'"

exe "let s:fg_dkGray = ' "s:mode."fg=" . get(s:CoDi['colorsObj'][s:mode], 'baseBG') ."'"
exe "let s:bg_dkGray = ' "s:mode."bg=" . get(s:CoDi['colorsObj'][s:mode], 'baseBG') ."'"

exe "let s:fg_color1 = ' "s:mode."fg=". get(s:CoDi['colorsObj'][s:mode], 'color1') ."'"
exe "let s:bg_color1 = ' "s:mode."bg=". get(s:CoDi['colorsObj'][s:mode], 'color1') ."'"

exe "let s:fg_color2 = ' "s:mode."fg=" . get(s:CoDi['colorsObj'][s:mode], 'color2') ."'"
exe "let s:bg_color2 = ' "s:mode."bg=" . get(s:CoDi['colorsObj'][s:mode], 'color2') ."'"

exe "let s:fg_color3 = ' "s:mode."fg=" . get(s:CoDi['colorsObj'][s:mode], 'color3') ."'"
exe "let s:bg_color3 = ' "s:mode."bg=" . get(s:CoDi['colorsObj'][s:mode], 'color3') ."'"

exe "let s:fg_color4 = ' "s:mode."fg=" . get(s:CoDi['colorsObj'][s:mode], 'color4') ."'"
exe "let s:bg_color4 = ' "s:mode."bg=" . get(s:CoDi['colorsObj'][s:mode], 'color4') ."'"

exe "let s:fg_color5 = ' "s:mode."fg=" . get(s:CoDi['colorsObj'][s:mode], 'color5') ."'"
exe "let s:bg_color5 = ' "s:mode."bg=" . get(s:CoDi['colorsObj'][s:mode], 'color5') ."'"

exe "let s:fg_color6 = ' "s:mode."fg=" . get(s:CoDi['colorsObj'][s:mode], 'color6') ."'"
exe "let s:bg_color6 = ' "s:mode."bg=" . get(s:CoDi['colorsObj'][s:mode], 'color6') ."'"

exe "let s:fg_color7 = ' "s:mode."fg=" . get(s:CoDi['colorsObj'][s:mode], 'color7') ."'"
exe "let s:bg_color7 = ' "s:mode."bg=" . get(s:CoDi['colorsObj'][s:mode], 'color7') ."'"

exe "let s:fg_color8 = ' "s:mode."fg=" . get(s:CoDi['colorsObj'][s:mode], 'color8') ."'"
exe "let s:bg_color8 = ' "s:mode."bg=" . get(s:CoDi['colorsObj'][s:mode], 'color8') ."'"

exe "let s:fg_color9 = ' "s:mode."fg=" . get(s:CoDi['colorsObj'][s:mode], 'color9') ."'"
exe "let s:bg_color9 = ' "s:mode."bg=" . get(s:CoDi['colorsObj'][s:mode], 'color9') ."'"

exe "let s:fg_color10 = ' "s:mode."fg=". get(s:CoDi['colorsObj'][s:mode], 'color10') ."'"
exe "let s:bg_color10 = ' "s:mode."bg=". get(s:CoDi['colorsObj'][s:mode], 'color10') ."'"

exe "let s:fg_color12 = ' "s:mode."fg=" . get(s:CoDi['colorsObj'][s:mode], 'color12') ."'"
exe "let s:bg_color12 = ' "s:mode."bg=" . get(s:CoDi['colorsObj'][s:mode], 'color12') ."'"

exe "let s:fg_color13 = ' "s:mode."fg=" . get(s:CoDi['colorsObj'][s:mode], 'color13') ."'"
exe "let s:bg_color13 = ' "s:mode."bg=" . get(s:CoDi['colorsObj'][s:mode], 'color13') ."'"

exe "let s:fg_color14 = ' "s:mode."fg=" . get(s:CoDi['colorsObj'][s:mode], 'color14') ."'"
exe "let s:bg_color14 = ' "s:mode."bg=" . get(s:CoDi['colorsObj'][s:mode], 'color14') ."'"

exe "let s:fg_color15 = ' "s:mode."fg=" . get(s:CoDi['colorsObj'][s:mode], 'color15') ."'"
exe "let s:bg_color15 = ' "s:mode."bg=" . get(s:CoDi['colorsObj'][s:mode], 'color15') ."'"

exe "let s:fg_color16 = ' "s:mode."fg=" . get(s:CoDi['colorsObj'][s:mode], 'color16') ."'"
exe "let s:bg_color16 = ' "s:mode."bg=" . get(s:CoDi['colorsObj'][s:mode], 'color16') ."'"

exe "let s:fg_color17 = ' "s:mode."fg=" . get(s:CoDi['colorsObj'][s:mode], 'color17') ."'"
exe "let s:bg_color17 = ' "s:mode."bg=" . get(s:CoDi['colorsObj'][s:mode], 'color17') ."'"

exe "let s:fg_color18 = ' "s:mode."fg=" . get(s:CoDi['colorsObj'][s:mode], 'color18') ."'"
exe "let s:bg_color18 = ' "s:mode."bg=" . get(s:CoDi['colorsObj'][s:mode], 'color18') ."'"

exe "let s:fg_color19 = ' "s:mode."fg=" . get(s:CoDi['colorsObj'][s:mode], 'color19') ."'"
exe "let s:bg_color19 = ' "s:mode."bg=" . get(s:CoDi['colorsObj'][s:mode], 'color19') ."'"

exe "let s:fg_color20 = ' "s:mode."fg=" . get(s:CoDi['colorsObj'][s:mode], 'color20') ."'"
exe "let s:bg_color20 = ' "s:mode."bg=" . get(s:CoDi['colorsObj'][s:mode], 'color20') ."'"

exe "let s:fg_color21 = ' "s:mode."fg=" . get(s:CoDi['colorsObj'][s:mode], 'color21') ."'"
exe "let s:bg_color21 = ' "s:mode."bg=" . get(s:CoDi['colorsObj'][s:mode], 'color21') ."'"

exe "let s:fg_color22 = ' "s:mode."fg=" . get(s:CoDi['colorsObj'][s:mode], 'color22') ."'"
exe "let s:bg_color22 = ' "s:mode."bg=" . get(s:CoDi['colorsObj'][s:mode], 'color22') ."'"

exe "let s:fg_color23 = ' "s:mode."fg=" . get(s:CoDi['colorsObj'][s:mode], 'color23') ."'"
exe "let s:bg_color23 = ' "s:mode."bg=" . get(s:CoDi['colorsObj'][s:mode], 'color23')."'"

exe "let s:fg_color24 = ' "s:mode."fg=" . get(s:CoDi['colorsObj'][s:mode], 'color24') ."'"
exe "let s:bg_color24 = ' "s:mode."bg=" . get(s:CoDi['colorsObj'][s:mode], 'color24')."'"

exe "let s:fg_color25 = ' "s:mode."fg=" . get(s:CoDi['colorsObj'][s:mode], 'color25') ."'"
exe "let s:bg_color25 = ' "s:mode."bg=" . get(s:CoDi['colorsObj'][s:mode], 'color25')."'"

exe "let s:fg_color26 = ' "s:mode."fg=" . get(s:CoDi['colorsObj'][s:mode], 'color26') ."'"
exe "let s:bg_color26 = ' "s:mode."bg=" . get(s:CoDi['colorsObj'][s:mode], 'color26') ."'"

exe "let s:fg_color27 = ' "s:mode."fg=" . get(s:CoDi['colorsObj'][s:mode], 'color27') ."'"
exe "let s:bg_color27 = ' "s:mode."bg=" . get(s:CoDi['colorsObj'][s:mode], 'color27') ."'"

exe "let s:fg_color28 = ' "s:mode."fg=" . get(s:CoDi['colorsObj'][s:mode], 'color28') ."'"
exe "let s:bg_color28 = ' "s:mode."bg=" . get(s:CoDi['colorsObj'][s:mode], 'color28') ."'"

exe "let s:bg_statusln = ' "s:mode."bg=" . get(s:CoDi['colorsObj'][s:mode], 'statusLn_2') ."'"
exe "let s:fg_statusln = ' "s:mode."fg=" . get(s:CoDi['colorsObj'][s:mode], 'statusLn_1') ."'"

exe "let s:fg_color30 = ' "s:mode."fg=" . get(s:CoDi['colorsObj'][s:mode], 'color30') ."'"
exe "let s:bg_color30 = ' "s:mode."bg=" . get(s:CoDi['colorsObj'][s:mode], 'color30') ."'"

"}}}
"SET Highlights {{{
exe "hi Normal"  s:fg_norm . s:bg_norm
exe "hi Nontext"  s:fg_color27
exe "hi Visual"  s:fg_black . s:bg_color3
exe "hi Type"  s:fg_color18
exe "hi Number"  s:fg_color24
exe "hi Boolean"  s:fg_color25
exe "hi Directory"  s:fg_color15 s:sty_b
exe "hi Conditional"  s:fg_color13 . s:sty_b
exe "hi MatchParen"  s:fg_color28 . s:bg_NONE . s:sty_b
exe "hi Special"  s:fg_color16
exe "hi SpecialKey"  s:fg_color4
exe "hi PreProc"  s:fg_color1
exe "hi TabLineFill"  s:bg_norm
exe "hi Tab"  s:fg_black
exe "hi VertSplit" s:fg_statusln
"
"{{{ Folds
exe "hi Folded" s:bg_dkGray
"}}}
"{{{ Search
exe "hi Search" s:bg_color24 .s:fg_color20 .s:sty_b
exe "hi IncSearch" s:bg_color24 .s:fg_color20 .s:sty_b
"}}}
"{{{ StatusLine
exe "hi StatusLine" s:bg_statusln .s:fg_statusln
exe "hi StatusLineNC" s:fg_dkGray .s:bg_color10 .s:sty_su
"}}}
"{{{ Line Number & Cursor
exe "hi LineNr" s:fg_color9 .s:bg_color8 .s:sty_s
exe "hi CursorLine" s:bg_color4 . s:sty_n
exe "hi CursorLineNr" s:fg_color17 .s:bg_dkGray
"}}}
"{{{ Pmenu
exe "hi Pmenu" s:fg_white . s:bg_dkGray . s:sty_n
exe "hi PmenuThumb" s:bg_norm
exe "hi PmenuSel" s:fg_color17 .s:bg_dkGray
"}}}
"{{{ Diff
exe "hi DiffAdd" s:fg_diff_add . s:bg_diff_add . s:sty_n
exe "hi DiffDelete" s:fg_diff_del . s:bg_diff_del . s:sty_n
exe "hi DiffChange" s:fg_NONE . s:bg_NONE . s:sty_n
exe "hi difftext" s:fg_difftxt . s:fg_norm . s:sty_u

"}}}
"{{{Spell
if has("spell")
  exe "hi SpellBad" s:fg_spell_bad .s:bg_spell_bad .s:sty_n
  exe "hi SpellCap" s:fg_spell_cap .s:bg_spell_cap .s:sty_n
  exe "hi SpellLocal" s:fg_spell_local .s:bg_spell_local .s:sty_n
  exe "hi SpellRare" s:fg_black .s:bg_spell_rare .s:sty_u
endif
"}}}
"{{{ Statement
exe "hi Statement" s:fg_color17 .s:sty_b
exe "hi Operator" s:fg_color26 s:sty_b

"}}}
"{{{ Identifier
exe "hi Identifier" s:fg_color14 s:sty_n
exe "hi Function" s:fg_color12 s:sty_b

"}}}
"{{{ Constant
exe "hi Constant" s:fg_color12
exe "hi String" s:fg_color19 .s:sty_b
"}}}
"{{{ Messaging
exe "hi Todo" s:fg_color25 .s:bg_color7 .s:sty_b
exe "hi Comment" s:fg_color6
"}}}
"{{{ Javascript
 hi link JavascriptNumber Number
 hi link JavascriptDebugger Identifier
"}}}
"{{{ Ruby
exe "hi rubyDefine" s:fg_color12 s:sty_b
"}}}
"}}}
"Colorscheme Functions {{{
if !exists('*SetLuminance')
  function! SetLuminance() abort
    call speyside#main#SetLuminance()
  endfunction
endif

if !exists('*ToggleLuminance')
  function! ToggleLuminance() abort
    call speyside#main#ToggleLuminance()
  endfunction
endif


if !hasmapto('<Plug>ToggleLuminance')
  nnoremap <Plug>ToggleLuminance :<C-U>call ToggleLuminance()<CR>
endif

if !hasmapto('<Plug>Speyside')
  nnoremap <Plug>Speyside :<C-U>call SetLuminance()<CR>
endif
"}}}
" vim: fdm=marker foldlevelstart=0 foldlevel=0
