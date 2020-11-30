# takodachi.vim

![takodachi](https://raw.githubusercontent.com/mildewchan/img/master/takodachi.png)

## Installation

Use whichever plugin manager you like. I'm partial to
[vim-plug](https://github.com/junegunn/vim-plug).

1. Add `Plug 'mildewchan/takodachi.vim'` to .vimrc in `call plug#begin` block
2. Run `:PlugInstall`
3. Call `colorscheme takodachi` in .vimrc, or manually (for some reason)

## Custom statusline
This colorscheme includes theming and a helper function for a custom statusline,
which can do much of what plugins like powerline, airline, lightline, etc. can
do, but in ~10 lines of vimscript instead of 500.

Add this to your .vimrc after loading the theme with
`colorscheme takodachi` to take advantage of it:
```
set statusline=%1*\ %{TakolineMode()}\ %2*\ %f\ %m\ %r%=\ %{&ff}\ \|\ %{strlen(&fenc)?&fenc:'none'}\ \|\ %{&filetype}\ %3*\ %l:%L\ 
set laststatus=2
set noshowmode
```

## Note for thinkpad users
If you're using a thinkpad with a shitty TN panel (like I was when I wrote the
early versions of this plugin), this theme will look better with stronger
colors.

Put this in your ~/.vimrc before loading with `colorscheme takodachi`:
```
let g:shitty_display=1
```

## Plugin integration
Support for plugins will be added in the future either for plugins I
use, and/or for plugins used by people willing to submit a merge request
with a nice-looking implementation that sticks to the original set of
colors.
