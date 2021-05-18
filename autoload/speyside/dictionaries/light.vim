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
    let l:colorOverrides = #{
          \baseBG: 253, baseFG: 59, color1: 31, color3: 59, color4: 254, color6: 65,
          \color8: 64, color9: 145, color10: 72, color12: 71, color13: 36, color14: 68,
          \color15: 66, color16:31, color17: 109, color18:104, color19:67, color24: 136,
          \color25: 198, color26: 208
          \}
  endif
  call extend(g:SpeysideColorDictionary.colorsObj.cterm, l:colorOverrides)
endfunction
