# takodachi.vim

![takodachi](https://raw.githubusercontent.com/mildewchan/img/master/takodachi.png)

## Installation

Use whichever plugin manager you like. I'm partial to
[vim-plug](https://github.com/junegunn/vim-plug).

1. Add `Plug 'mildewchan/takodachi.vim'` to .vimrc in `call plug#begin` block
2. Run `:PlugInstall`
3. Call `colorscheme takodachi` in .vimrc, or manually (for some reason)

## Custom statuslines
This colorscheme includes theming for custom statuslines out of the box,
which can do much of what plugins like powerline, airline, lightline, etc.
can, but without bloating your init with hundreds of lines of vimscript.

Add this to your .vimrc after loading the theme with
`colorscheme takodachi` to get the statusline pictured
in this README:
```
function! g:StatuslineMode()
  let l:mode_map = {
    \ 'n': 'NORMAL', 'i': 'INSERT', 'R': 'REPLACE',
    \ 'v': 'VISUAL', 'V': 'V-LINE', "\<C-v>": 'V-BLOCK',
    \ 'c': 'COMMAND', 's': 'SELECT', 'S': 'S-LINE',
    \ "\<C-s>": 'S-BLOCK', 't': 'TERMINAL',
    \   }
  return get(l:mode_map, mode(), "BLACK MAGIC")
endfunction
set statusline=%1*\ %{StatuslineMode()}\ %2*\ %f\ %m\ %r%=\ %{&ff}\ \|\ %{strlen(&fenc)?&fenc:'none'}\ \|\ %{&filetype}\ %3*\ %l:%L\ 
set laststatus=2
set noshowmode
```

## Note for thinkpad users
If you're using a thinkpad with a shitty TN panel (like I was while developing this),
this theme might look better with stronger colors to compensate for the display washing them out.

If you want to do this, load the colorscheme like this:
```
let g:shitty_display=1
colorscheme takodachi
```

## Plugin integration
Support for plugins will be added in the future either for plugins I
use, and/or for plugins used by people willing to submit a merge request
with a nice-looking implementation that doesn't look completely out of
place with the established palette.
