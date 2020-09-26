function! speyside#dictionaries#dark#init()
if has("gui_running")
  " gui
  let l:colorOverrides = {
        \'baseBG': '#262626', 'baseFG': '#ffffd7', 'color6': '#87875f'}
  call extend(g:SpeysideColorDictionary.colorsObj.gui, l:colorOverrides)
else
  " cterm
  let l:colorOverrides = #{baseBG: 235, baseFG: 230, color6: 101}
  call extend(g:SpeysideColorDictionary.colorsObj.cterm, l:colorOverrides)
endif
endfunction

