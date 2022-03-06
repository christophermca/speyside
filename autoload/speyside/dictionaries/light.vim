function! speyside#dictionaries#light#init()
  if has("gui_running")
    " gui
    let l:colorOverrides = {'baseBG': '#dadada', 'baseFG': '#5f5f5f',
          \'color1': '#0087d7', 'color3': '#5f5f5f', 'color4': '#e4e4e4',
          \'color6': '#87875f', 'color10': '#5faf87', 'color12': '#00af00',
          \'color13': '#00af87', 'color14': '#5f87d7', 'color16': '#0087af',
          \'color17': '#00afd7', 'color18': '#8787d7', 'color19': '#0087d7',
          \'color24': '#af8700', 'color25': '#ff0087', 'color26': '#d7875f'}
    call extend(g:SpeysideColorDictionary.colorsObj.gui, l:colorOverrides)
  else
    " cterm
    " note color6 is highlighting comments
    let l:colorOverrides = #{
          \baseBG: 254, baseFG: 58, color1: 25, color3: 123, color4: 231, color6: 64,
          \color7: 99, color8: 64, color9: 252, color10: 71, color12: 35, color13: 36,
          \color14: 28, color15: 66, color16:31, color17: 31, color18:62, color19:67,
          \color24: 208, color25:202,  color26: 172, color27: 104, color30: 251,
          \statusLn_1: 230, statusLn_2: 245, statusLn_NC: 253
          \}
  endif
  call extend(g:SpeysideColorDictionary.colorsObj.cterm, l:colorOverrides)
endfunction
