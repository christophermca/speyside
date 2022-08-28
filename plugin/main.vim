"NOTE used at loadtime of speyside plugin
try
  """
  " If SpeysideLumionsity is set then use this value as the default value
  " for the theme
  """

  if exists('g:SpeysideLuminosity')
    if g:SpeysideLuminosity == 1
        call speyside#overrides#Dark()
    elseif g:SpeysideLuminosity == 3
        call speyside#overrides#Light()
    endif
  endif
endtry
