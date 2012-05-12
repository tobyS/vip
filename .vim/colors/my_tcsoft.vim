"mod_tcsoft is based on the tcsoft-color scheme (http://www.vim.org/scripts/script.php?script_id=641),
"made by Ingo Fabbri <vim@tcsoft.net>
"
"I changed the cursor and the background-colors. Hope you like it.

""Author: André Kelpe <fs111 at web dot de>
" Last change Sa Okt 30 13:34:52 CEST 2004

set background=light
hi clear
if exists("syntax_on")
  syntax reset
endif
let colors_name = "my_tcsoft"

hi Normal       guifg=#000000   guibg=White

hi Ignore       guifg=bg

hi Comment      guifg=#888A85   gui=italic  				"medium grey
hi Constant     guifg=#666666   gui=NONE    				"grey
hi Special      guifg=#CC0000   gui=NONE    				"red
hi Identifier   guifg=#204A87   gui=NONE    				"medium blue
hi Statement    guifg=#FF9900   gui=NONE    				"medium orange
hi PreProc      guifg=#009900   gui=NONE    				"medium green
hi Type         guifg=#FF9900   gui=bold    				"medium orange
hi Cursor       guifg=#FFFFFF   guibg=#000000  				"black on white
hi LineNr       guifg=#666666   guibg=#eeeeee gui=NONE    	"medium grey
hi StatusLine   guifg=#000000   gui=reverse,bold "schwarz
hi Todo         guifg=#CC0000	guibg=White   gui=bold		"red, bold

hi SpellBad     gui=bold,reverse,underline guifg=#ff0000	" red, inverse, underline

" Display a simple underline instead of the higlighted cursorline
hi clear CursorLine
hi CursorLine   gui=underline

" Display invisible character marks in a more invisible way
hi NonText      guifg=#999999
hi SpecialKey   guifg=#999999

" Display the colorcolumn to be easy on the eyes but nevertheless visible
hi ColorColumn  guibg=#eeeeee

" Display matching parenthesis in bold (whery light, but visible and most
" important: active brace is distinguishable!)
hi MatchParen   guifg=#CC0000 guibg=White gui=bold,undercurl,standout

" Define proper colors for the autocompletion menu
hi clear Pmenu
hi Pmenu guibg=#ffc773 gui=NONE guifg=#000000
hi PmenuSel guibg=#666666 gui=bold guifg=#ffffff

" Search highlights should look nice
hi clear Search
hi Search guibg=#ffd04e gui=NONE guifg=#000000

hi link   Function    PreProc
hi link   String	  Constant
hi link   Character	  Constant

hi! link  MoreMsg     Comment
hi! link  ErrorMsg    Visual
hi! link  WarningMsg  ErrorMsg
hi! link  Question    Comment

hi link   Number	    Special
hi link   Boolean	    Special
hi link   Float		    Number

hi link   Operator    	Identifier
hi link   Keyword	    Statement
hi link   Exception	  	Statement
hi link   Include	    PreProc
hi link   Define	    PreProc
hi link   Macro		    PreProc

hi link   Conditional	Statement
hi link   Repeat	    Statement
hi link   Label		    Statement

hi link   PreCondit	  	PreProc
hi link   StorageClass	Type
hi link   Structure	  	Type
hi link   Typedef	    Type
hi link   SpecialChar	Special
hi link   Delimiter	  	Special
hi link   SpecialComment Comment
hi link   Debug		    Special

" Change the color of the + signs in front of openable NERDTree folders
hi treeOpenable gui=bold guifg=#FF9900
