# speyside
A Vim Colorscheme

## configuration

```.vimrc```
__in your vimrc__

set the variable `g:SpeysideDefaultLuminence` to values [1-3]

*1: dark*
*2: medium*
*3: bright*

### Switching Between Luminance

Set a shortcut to call the Speyside plugin.
```
if maparg('<leader>gl', 'n') ==# ''
  xmap <leader>gl  <plug>Speyside
  vmap <leader>gl  <plug>Speyside
  nmap <leader>gl  <plug>Speyside
  omap <leader>gl  <plug>Speyside
endif
```
# Contributing
**code style:** https://google.github.io/styleguide/vimscriptguide.xml
