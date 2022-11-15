function! speyside#dictionaries#dark#init()
if has("gui_running")
  " gui
  let l:colorOverrides = #{
        \baseBG: '#262626', baseFG: '#ffffd7', color4: '#1c1c1c', color6: '#87875f', color9: '#303030',
        color30:'#444444' ,statusLn_NC: '#1c1c1c'
        \}
  call extend(g:SpeysideColorDictionary.colorsObj.gui, l:colorOverrides)
else
  " cterm
  let l:colorOverrides = #{
        \baseBG: 235, baseFG: 230, color4: 234, color6: 151, color9: 236,
        \color30: 238, statusLn_NC: 234
        \}
  call extend(g:SpeysideColorDictionary.baseColors.cterm, l:colorOverrides)
endif
endfunction

