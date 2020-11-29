# takodachi.vim

![takodachi](https://raw.githubusercontent.com/mildewchan/img/master/takodachi.png)

## Installation

Use whichever plugin manager you like. I'm partial to vim-plug.

- [vim-plug](https://github.com/junegunn/vim-plug)
  1. Add `Plug 'mildewchan/takodachi.vim'` to .vimrc in `call plug#begin` block
  2. Run `:PlugInstall`

## Custom statusline
This colorscheme includes theming and a helper function for a custom statusline,
which can do much of what plugins like powerline, airline, lightline, etc. can
do, but in ~10 lines of vimscript instead of 500.

Add this to your `.vimrc` after activating the theme with
`colorscheme takodachi` to take advantage of it:
```
set statusline=%1*\ %{TakolineMode()}\ %2*\ %f\ %m\ %r%=\ %{&ff}\ \|\ %{strlen(&fenc)?&fenc:'none'}\ \|\ %{&filetype}\ %3*\ %l:%L\ 
set laststatus=2
set noshowmode
```