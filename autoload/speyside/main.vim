function! speyside#main#UpdateLuminance() abort

  let g:SpeysideLuminosity = input("current Luminance: " . g:SpeysideLuminosity . " | Set Lumenince [1-3]: ")

  if g:SpeysideLuminosity == 1
      set background=dark
      call speyside#overrides#Dark()
  elseif g:SpeysideLuminosity == 2
      "default luminence
      set background=dark
      call <SID>_resetSpeyside()
  elseif g:SpeysideLuminosity == 3
      set background=light
      call speyside#overrides#Light()
  else
    redraw
    echo g:SpeysideLuminosity . " is not is range of available Luminance. Available luminance [1-3]"
    let g:SpeysideLuminosity = g:SpeysideDefaultLuminence
  endif

endfunction

function! s:_resetSpeyside() abort
  "au! speysideOverrides
  unlet g:SpeysideColorDictionary
  colorscheme speyside
endfunction
