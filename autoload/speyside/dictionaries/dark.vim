function! speyside#dictionaries#dark#init()
  set background=dark
  let l:colorOverrides = #{baseBG: 235, baseFG: 230, color6: 101}
  call extend(g:SpeysideColorDictionary.colorsObj, l:colorOverrides)
endfunction

