function! speyside#main#ToggleLuminance() abort
  " " This won't update in current runnin session
  " let l:dayNight = $DAY_NIGHT

  " if l:dayNight == 'night'
  "   call extend(luminance, {'enhance':  1})
  " else
  "   call extend(luminance, {'enhance': 3})
  " endif

  if g:SpeysideLuminosity == get(g:luminance, 'default')
    let g:SpeysideLuminosity = get(g:luminance, 'enhance')
  else
    let g:SpeysideLuminosity = get(g:luminance, 'default')
  endif
  call <SID>_updateColorDictionary()
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

function! s:_resetSpeyside() abort
  set background=dark
  unlet g:SpeysideColorDictionary
  colorscheme speyside
endfunction
