"used at load time of speyside
try
  if exists('g:SpeysideLuminosity')
    if g:SpeysideLuminosity == 1
        call speyside#overrides#Dark()
    elseif g:SpeysideLuminosity == 3
        call speyside#overrides#Light()
    endif
  endif
endtry
