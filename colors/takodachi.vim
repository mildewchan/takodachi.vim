" " takodachi.vim - colorscheme for cultists "
" File:     takodachi.vim
" URL:      github.com/mildewchan/takodachi.vim
" Author:   mildewchan (mildewchan@gmail.com)
" License:  WTFPL
" Initial version generated by http://bytefluent.com/vivify 2020-11-27

set background=dark
if version > 580
	hi clear
	if exists("syntax_on")
		syntax reset
	endif
endif

set t_Co=256
let g:colors_name = "takodachi"

" type '85j' to skip past this beast
if !exists('s:rgb_map')
  let s:rgb_map = {
    \  16: '#000000',  17: '#00005f',  18: '#000087',
    \  19: '#0000af',  20: '#0000d7',  21: '#0000ff',
    \  22: '#005f00',  23: '#005f5f',  24: '#005f87',
    \  25: '#005faf',  26: '#005fd7',  27: '#005fff',
    \  28: '#008700',  29: '#00875f',  30: '#008787',
    \  31: '#0087af',  32: '#0087d7',  33: '#0087ff',
    \  34: '#00af00',  35: '#00af5f',  36: '#00af87',
    \  37: '#00afaf',  38: '#00afd7',  39: '#00afff',
    \  40: '#00d700',  41: '#00d75f',  42: '#00d787',
    \  43: '#00d7af',  44: '#00d7d7',  45: '#00d7ff',
    \  46: '#00ff00',  47: '#00ff5f',  48: '#00ff87',
    \  49: '#00ffaf',  50: '#00ffd7',  51: '#00ffff',
    \  52: '#5f0000',  53: '#5f005f',  54: '#5f0087',
    \  55: '#5f00af',  56: '#5f00d7',  57: '#5f00ff',
    \  58: '#5f5f00',  59: '#5f5f5f',  60: '#5f5f87',
    \  61: '#5f5faf',  62: '#5f5fd7',  63: '#5f5fff',
    \  64: '#5f8700',  65: '#5f875f',  66: '#5f8787',
    \  67: '#5f87af',  68: '#5f87d7',  69: '#5f87ff',
    \  70: '#5faf00',  71: '#5faf5f',  72: '#5faf87',
    \  73: '#5fafaf',  74: '#5fafd7',  75: '#5fafff',
    \  76: '#5fd700',  77: '#5fd75f',  78: '#5fd787',
    \  79: '#5fd7af',  80: '#5fd7d7',  81: '#5fd7ff',
    \  82: '#5fff00',  83: '#5fff5f',  84: '#5fff87',
    \  85: '#5fffaf',  86: '#5fffd7',  87: '#5fffff',
    \  88: '#870000',  89: '#87005f',  90: '#870087',
    \  91: '#8700af',  92: '#8700d7',  93: '#8700ff',
    \  94: '#875f00',  95: '#875f5f',  96: '#875f87',
    \  97: '#875faf',  98: '#875fd7',  99: '#875fff',
    \ 100: '#878700', 101: '#87875f', 102: '#878787',
    \ 103: '#8787af', 104: '#8787d7', 105: '#8787ff',
    \ 106: '#87af00', 107: '#87af5f', 108: '#87af87',
    \ 109: '#87afaf', 110: '#87afd7', 111: '#87afff',
    \ 112: '#87d700', 113: '#87d75f', 114: '#87d787',
    \ 115: '#87d7af', 116: '#87d7d7', 117: '#87d7ff',
    \ 118: '#87ff00', 119: '#87ff5f', 120: '#87ff87',
    \ 121: '#87ffaf', 122: '#87ffd7', 123: '#87ffff',
    \ 124: '#af0000', 125: '#af005f', 126: '#af0087',
    \ 127: '#af00af', 128: '#af00d7', 129: '#af00ff',
    \ 130: '#af5f00', 131: '#af5f5f', 132: '#af5f87',
    \ 133: '#af5faf', 134: '#af5fd7', 135: '#af5fff',
    \ 136: '#af8700', 137: '#af875f', 138: '#af8787',
    \ 139: '#af87af', 140: '#af87d7', 141: '#af87ff',
    \ 142: '#afaf00', 143: '#afaf5f', 144: '#afaf87',
    \ 145: '#afafaf', 146: '#afafd7', 147: '#afafff',
    \ 148: '#afd700', 149: '#afd75f', 150: '#afd787',
    \ 151: '#afd7af', 152: '#afd7d7', 153: '#afd7ff',
    \ 154: '#afff00', 155: '#afff5f', 156: '#afff87',
    \ 157: '#afffaf', 158: '#afffd7', 159: '#afffff',
    \ 160: '#d70000', 161: '#d7005f', 162: '#d70087',
    \ 163: '#d700af', 164: '#d700d7', 165: '#d700ff',
    \ 166: '#d75f00', 167: '#d75f5f', 168: '#d75f87',
    \ 169: '#d75faf', 170: '#d75fd7', 171: '#d75fff',
    \ 172: '#d78700', 173: '#d7875f', 174: '#d78787',
    \ 175: '#d787af', 176: '#d787d7', 177: '#d787ff',
    \ 178: '#d7af00', 179: '#d7af5f', 180: '#d7af87',
    \ 181: '#d7afaf', 182: '#d7afd7', 183: '#d7afff',
    \ 184: '#d7d700', 185: '#d7d75f', 186: '#d7d787',
    \ 187: '#d7d7af', 188: '#d7d7d7', 189: '#d7d7ff',
    \ 190: '#d7ff00', 191: '#d7ff5f', 192: '#d7ff87',
    \ 193: '#d7ffaf', 194: '#d7ffd7', 195: '#d7ffff',
    \ 196: '#ff0000', 197: '#ff005f', 198: '#ff0087',
    \ 199: '#ff00af', 200: '#ff00d7', 201: '#ff00ff',
    \ 202: '#ff5f00', 203: '#ff5f5f', 204: '#ff5f87',
    \ 205: '#ff5faf', 206: '#ff5fd7', 207: '#ff5fff',
    \ 208: '#ff8700', 209: '#ff875f', 210: '#ff8787',
    \ 211: '#ff87af', 212: '#ff87d7', 213: '#ff87ff',
    \ 214: '#ffaf00', 215: '#ffaf5f', 216: '#ffaf87',
    \ 217: '#ffafaf', 218: '#ffafd7', 219: '#ffafff',
    \ 220: '#ffd700', 221: '#ffd75f', 222: '#ffd787',
    \ 223: '#ffd7af', 224: '#ffd7d7', 225: '#ffd7ff',
    \ 226: '#ffff00', 227: '#ffff5f', 228: '#ffff87',
    \ 229: '#ffffaf', 230: '#ffffd7', 231: '#ffffff',
    \ 232: '#080808', 233: '#121212', 234: '#1c1c1c',
    \ 235: '#262626', 236: '#303030', 237: '#3a3a3a',
    \ 238: '#444444', 239: '#4e4e4e', 240: '#585858',
    \ 241: '#626262', 242: '#6c6c6c', 243: '#767676',
    \ 244: '#808080', 245: '#8a8a8a', 246: '#949494',
    \ 247: '#9e9e9e', 248: '#a8a8a8', 249: '#b2b2b2',
    \ 250: '#bcbcbc', 251: '#c6c6c6', 252: '#d0d0d0',
    \ 253: '#dadada', 254: '#e4e4e4', 255: '#eeeeee',
    \ }
endif

" this set of colors is the heart and soul of the theme.
" xterm color reference: https://jonasjacek.github.io/colors/
let s:tako_colors_256 = {
  \ 'Black': 16,
  \ 'White': 189,
  \ 'StrongOrange': 214,
  \ 'LightOrange': 216,
  \ 'LightGrey': 237,
  \ 'BlueSlateGrey': 103,
  \ 'SilverGrey': 248,
  \ 'BackgroundGrey': 235,
  \ 'PaleTurquoise': 66,
  \ 'SoftPink': 181,
  \ 'MediumPurple': 140,
  \ 'StrongPurple': 133,
  \ 'Magenta': 168
  \ }

function! s:hi(item, fg, bg)
  " default -> bright red -> undefined behavior
  let l:fg_xterm = (a:fg=='NONE')?'NONE':get(s:tako_colors_256, a:fg, 160)
  let l:fg_rgb = (a:fg=='NONE')?'NONE':get(s:rgb_map, l:fg_xterm, '#d70000')
  let l:bg_xterm = (a:bg=='NONE')?'NONE':get(s:tako_colors_256, a:bg, 160) 
  let l:bg_rgb = (a:bg=='NONE')?'NONE':get(s:rgb_map, l:bg_xterm, '#d70000')
  execute printf("highlight %s ctermfg=%s ctermbg=%s guifg=%s guibg=%s 
                \ guisp=%s",
                \ a:item, l:fg_xterm, l:bg_xterm, l:fg_rgb, l:bg_rgb,
                \ l:bg_rgb)
endfunction

" here's where we apply the color to the syntax groups.
" if you want to tweak which color appears where, this
" will be the place to do it.
call s:hi("Normal", "White", "BackgroundGrey")
call s:hi("IncSearch", "White", "StrongPurple")
call s:hi("WildMenu", "NONE", "SilverGrey")
call s:hi("SignColumn", "BackgroundGrey", "BlueSlateGrey")
call s:hi("SpecialComment", "StrongOrange", "NONE")
call s:hi("Typedef", "BlueSlateGrey", "NONE")
call s:hi("Title", "White", "BackgroundGrey")
call s:hi("Folded", "BackgroundGrey", "SilverGrey")
call s:hi("PreCondit", "Magenta", "NONE")
call s:hi("Include", "Magenta", "NONE")
call s:hi("Float", "SilverGrey", "NONE")
call s:hi("StatusLineNC", "NONE", "StrongPurple")
call s:hi("NonText", "PaleTurquoise", "NONE")
call s:hi("DiffText", "White", "LightOrange")
call s:hi("ErrorMsg", "NONE", "LightOrange")
call s:hi("Debug", "StrongOrange", "NONE")
call s:hi("PMenuSbar", "NONE", "BlueSlateGrey")
call s:hi("Identifier", "StrongPurple", "NONE")
call s:hi("SpecialChar", "LightOrange", "NONE")
call s:hi("Conditional", "StrongPurple", "NONE")
call s:hi("StorageClass", "SilverGrey", "NONE")
call s:hi("Todo", "Black", "LightOrange")
call s:hi("Special", "LightOrange", "NONE")
call s:hi("LineNr", "LightOrange", "LightGrey")
call s:hi("StatusLine", "White", "StrongPurple")
call s:hi("Label", "StrongOrange", "NONE")
call s:hi("PMenuSel", "White", "StrongPurple")
call s:hi("Search", "BackgroundGrey", "NONE")
call s:hi("Delimiter", "StrongOrange", "NONE")
call s:hi("Statement", "SoftPink", "NONE")
call s:hi("SpellRare", "White", "BackgroundGrey")
call s:hi("Comment", "PaleTurquoise", "NONE")
call s:hi("Character", "SilverGrey", "NONE")
call s:hi("TabLineSel", "White", "StrongPurple")
call s:hi("Number", "SilverGrey", "BackgroundGrey")
call s:hi("Boolean", "SilverGrey", "NONE")
call s:hi("Operator", "StrongPurple", "NONE")
call s:hi("CursorLine", "NONE", "BackgroundGrey")
call s:hi("TabLineFill", "BackgroundGrey", "StrongPurple")
call s:hi("WarningMsg", "Black", "LightOrange")
call s:hi("VisualNOS", "BackgroundGrey", "White")
call s:hi("DiffDelete", "NONE", "BackgroundGrey")
call s:hi("ModeMsg", "White", "BackgroundGrey")
call s:hi("CursorColumn", "NONE", "BackgroundGrey")
call s:hi("Define", "Magenta", "NONE")
call s:hi("Function", "BlueSlateGrey", "NONE")
call s:hi("FoldColumn", "BackgroundGrey", "SilverGrey")
call s:hi("PreProc", "Magenta", "NONE")
call s:hi("Visual", "BackgroundGrey", "White")
call s:hi("MoreMsg", "StrongOrange", "NONE")
call s:hi("SpellCap", "White", "BackgroundGrey")
call s:hi("VertSplit", "BackgroundGrey", "PaleTurquoise")
call s:hi("Exception", "Magenta", "NONE")
call s:hi("Keyword", "StrongPurple", "NONE")
call s:hi("Type", "MediumPurple", "NONE")
call s:hi("DiffChange", "White", "StrongPurple")
call s:hi("Cursor", "BackgroundGrey", "White")
call s:hi("SpellLocal", "White", "BackgroundGrey")
call s:hi("Error", "SilverGrey", "LightOrange")
call s:hi("PMenu", "BackgroundGrey", "StrongPurple")
call s:hi("SpecialKey", "PaleTurquoise", "NONE")
call s:hi("Constant", "SilverGrey", "NONE")
call s:hi("Tag", "StrongOrange", "NONE")
call s:hi("String", "MediumPurple", "NONE")
call s:hi("PMenuThumb", "NONE", "SilverGrey")
call s:hi("MatchParen", "StrongOrange", "NONE")
call s:hi("Repeat", "Magenta", "NONE")
call s:hi("SpellBad", "White", "BackgroundGrey")
call s:hi("Directory", "SilverGrey", "NONE")
call s:hi("Structure", "SilverGrey", "NONE")
call s:hi("Macro", "Magenta", "NONE")
call s:hi("Underlined", "White", "BackgroundGrey")
call s:hi("DiffAdd", "NONE", "BackgroundGrey")
call s:hi("TabLine", "BackgroundGrey", "StrongPurple")
call s:hi("cursorim", "BackgroundGrey", "BlueSlateGrey")
"hi CTagsMember -- no settings --
"hi CTagsGlobalConstant -- no settings --
"hi Ignore -- no settings --
"hi CTagsImport -- no settings --
"hi CTagsGlobalVariable -- no settings --
"hi EnumerationValue -- no settings --
"hi Union -- no settings --
"hi Question -- no settings --
"hi EnumerationName -- no settings --
"hi DefinedName -- no settings --
"hi LocalVariable -- no settings --
"hi CTagsClass -- no settings --
"hi clear -- no settings --

" batteries included for custom themed statusline,
" see project README for more details on this
function! g:TakolineMode()
  let l:mode_map = {
    \ 'n': 'NORMAL', 'i': 'INSERT', 'R': 'REPLACE',
    \ 'v': 'VISUAL', 'V': 'V-LINE', "\<C-v>": 'V-BLOCK',
    \ 'c': 'COMMAND', 's': 'SELECT', 'S': 'S-LINE',
    \ "\<C-s>": 'S-BLOCK', 't': 'TERMINAL',
    \   }
  return get(l:mode_map, mode(), "BLACK MAGIC")
endfunction
hi User1 ctermbg=133 ctermfg=15 guibg=black guifg=white
hi User2 ctermbg=237 ctermfg=15 guibg=black guifg=white
hi User3 ctermbg=248 ctermfg=232 guibg=black guifg=white

