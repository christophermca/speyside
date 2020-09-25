function! speyside#dictionaries#dark#init()
if has("gui_running")
  " gui
  " DARK OVERRIDES
  " {'baseBG': '#262626', 'baseFG': '#ffffd7', 'color6': '#87875f'}}
else
  " cterm
  let l:colorOverrides = #{baseBG: 235, baseFG: 230, color6: 101}
endif
  call extend(g:SpeysideColorDictionary.colorsObj.cterm, l:colorOverrides)
endfunction

