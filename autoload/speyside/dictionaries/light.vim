function! speyside#dictionaries#light#init()
  if has("gui_running")
    " gui
    " LIGHT OVERRIDES
    " {'baseBG': '#dadada', 'baseFG': '#5f5f5f', 'color1': '#0087d7', 'color3': '#5f5f5f', 'color4': '#e4e4e4', 'color6': '#87875f', 'color10': '#5faf87', 'color12': '#00af00', 'color13': '#00af87', 'color14': '#5f87d7', 'color16': '#0087af', 'color17': '#00afd7', 'color18': '#8787d7', 'color19': '#0087d7', 'color24': '#af8700', 'color25': '#ff0087', 'color26': '#d7875f'}
    "
  else
    " cterm
    let l:colorOverrides = #{
          \baseBG: 253, baseFG: 59, color1: 32, color3: 59, color4: 254, color6: 101,
          \color10: 72, color12: 34, color13: 36, color14: 68, color15: 29,
          \color16:31, color17:38, color18:104, color19:32, color24: 136, color25: 198,
          \color26: 173
          \}
  endif
  call extend(g:SpeysideColorDictionary.colorsObj.cterm, l:colorOverrides)
endfunction
