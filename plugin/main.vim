if g:SpeysideLuminosity == 1
    set background=dark
    call speyside#overrides#Dark()
elseif g:SpeysideLuminosity == 3
    set background=light
    call speyside#overrides#Light()
  else
    set background=dark
    call <SID>_resetSpeyside()
endif


function! s:_resetSpeyside() abort
  "au! speysideOverrides
  unlet g:SpeysideColorDictionary
  "colorscheme speyside
endfunction
