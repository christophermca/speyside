" public
function! speyside#main#ToggleLuminance() abort
  try
    call <SID>_initToggleLuminance()

    if g:SpeysideLuminosity == get(g:SpeysideDayNightToggleluminance, 'default')
      let g:SpeysideLuminosity = get(g:SpeysideDayNightToggleluminance, 'enhance')
    else
      let g:SpeysideLuminosity = get(g:SpeysideDayNightToggleluminance, 'default')
    endif
    call <SID>_updateColorDictionary()
  catch /^SPEYSIDE/
  echo "SPEYSIDE - !!ToggleLuminance feature is not available"
  endtry
endfunction

function! speyside#main#CycleLuminance() abort
  call <SID>_resetSpeyside()
  if exists("g:SpeysideLuminosity")
    if g:SpeysideLuminosity == 3
      let g:SpeysideLuminosity = 1
    else
      let g:SpeysideLuminosity += 1
    endif
    call <SID>_updateColorDictionary()
  endif

endfunction

function! speyside#main#SetLuminance() abort
  call <SID>_resetSpeyside()
  let g:SpeysideLuminosity = input("current Luminance: " . g:SpeysideLuminosity . " | Set Lumenince [1-3]: ")

  call <SID>_updateColorDictionary()
endfunction

" private
function! s:_updateColorDictionary() abort
  if g:SpeysideLuminosity == 1
      call speyside#overrides#Dark()
  elseif g:SpeysideLuminosity == 2
     " returns default ColorDictionary
     call <SID>_resetSpeyside()
  elseif g:SpeysideLuminosity == 3
      call speyside#overrides#Light()
  else
    redraw
    echo g:SpeysideLuminosity . " is not is range of available Luminance. Available luminance [1-3]"
    let g:SpeysideLuminosity = g:SpeysideDefaultLuminence
  endif
endfunction

function s:_initToggleLuminance() abort
  if exists("g:PathToSpeysideMode")
    let l:mode=glob(g:PathToSpeysideMode)
    if strlen(l:mode) == 0
      throw "SPEYSIDE - g:PathToSpeysideMode is not set beforehand eg .vimrc"
    endif
    let l:current_mode=readfile(l:mode, '' , 1)[0]
    if l:current_mode=~"^night"
      call extend(g:SpeysideDayNightToggleluminance, {'enhance':  1})
    elseif l:current_mode=~"^day"
      call extend(g:SpeysideDayNightToggleluminance, {'enhance': 3})
    endif
  endif
endfunction

function! s:_resetSpeyside() abort
  set background=dark
  unlet g:SpeysideColorDictionary
  colorscheme speyside
endfunction
