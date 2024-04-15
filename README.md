# speyside
A Vim 9.0 Colorscheme
build with [pollock](https://github.com/christophermca/Pollock)

## Configuration

__in your vimrc__
g:SpeysideDefaultLuminence=<value>` to values [1-3]

*1: Dark*
*2: Middle*
*3: Light*

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

### NEW <BETA> FEATURE ###

# ToggleLuminance

__Requires configuration change__

`set rtp=<path-to-day-night-mode>`

`g:SpeysideMode=<path-to-current-mode>`

```
if maparg('<leader>gt', 'n') ==# ''
  xmap <leader>gt  <plug>ToggleLuminance
  vmap <leader>gt  <plug>ToggleLuminance
  nmap <leader>gt  <plug>ToggleLuminance
  omap <leader>gt  <plug>ToggleLuminance
endif
```

# Contributing
**code style:** https://google.github.io/styleguide/vimscriptguide.xml
