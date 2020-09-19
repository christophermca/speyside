let s:ColorDictionary = g:SpeysideColorDictionary

function! speyside#overrides#Dark() abort
  augroup speysideOverrides
    autocmd!
    call speyside#dictionaries#dark#init()
    colorscheme speyside
  augroup END
endfunction

function! speyside#overrides#Light() abort
  augroup speysideOverrides
    autocmd!
    call speyside#dictionaries#light#init()
    colorscheme speyside
  augroup END
endfunction
