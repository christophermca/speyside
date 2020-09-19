function! speyside#dictionaries#light#init()
  let l:colorOverrides = #{
        \baseBG: 253, baseFG: 59, color1: 32, color3: 59, color4: 254, color6: 101,
        \color10: 72, color12: 34, color13: 42, color14: 68, color15: 29,
        \color16:31, color17:38, color18:104, color19:32, color24: 136, color25: 198,
        \color26: 173
        \}

  call extend(g:SpeysideColorDictionary.colorsObj, l:colorOverrides)
endfunction
