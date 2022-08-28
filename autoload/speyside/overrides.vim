function! speyside#overrides#Dark() abort
  augroup speysideOverrides
    autocmd!
    set background=dark
    call speyside#dictionaries#dark#init()
    colorscheme speyside
  augroup END
endfunction

function! speyside#overrides#Light() abort
  augroup speysideOverrides
    autocmd!
    set background=light
    call speyside#dictionaries#light#init()
    colorscheme speyside
  augroup END
endfunction
