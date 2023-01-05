function! speyside#dictionaries#light#init()
  if has("gui_running")
    " gui
    let l:colorOverrides = {
          \baseBG: '#dadada', baseFG: '#5f5f5f', color1: '#0087d7', color3: '#5f5f5f', color4: '#e4e4e4', color6: '#5f8700',
          \color7: '#875fff', color8: '#5f8700', color9: '#d0d0d0', color10: '#5faf5f', color12: '#00af5f', color13: '#00af87',
          \color14: '#5f87d7', color16: '#0087af', color17: '#00afd7', color18: '#8787d7', color19: '#0087d7',
          \color24: '#af8700', color25: '#ff0087', color26: '#d7875f', color27: '#8787df', color29,'#ff5f87',  color30:'#c6c6c6',
          \statusLn_1: '#ffffdf', statusLn_2: '#8a8a8a', statusLn_NC: "#eeeeee", statusLn_NC_2: '#5faf5f'}
    call extend(g:SpeysideColorDictionary.colorsObj.gui, l:colorOverrides)
  else
    " cterm
    " note color6 is highlighting comments
    let l:colorOverrides = #{
          \baseBG: 254, baseFG: 239, color1: 25, color3: 109, color4: 231, color6: 64,
          \color7: 99, color8: 64, color9: 252, color10: 71, color12: 22, color13: 36,
          \color14: 28, color15: 66, color16:31, color17: 31, color18:62, color19:67,
          \color24: 190, color25: 202, color26: 172, color27: 104, color29: 204, color30: 251,
          \statusLn_1: 230, statusLn_2: 245, statusLn_NC: 255, statusLn_NC_2: 71
          \}
  endif
  call extend(g:SpeysideColorDictionary.colorsObj.cterm, l:colorOverrides)
endfunction
