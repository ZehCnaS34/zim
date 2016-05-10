set background=dark
highlight clear
if exists("syntax_on")
  syntax reset
end
let g:colors_name = "Cake"

" This is a comment
hi Normal guibg=#2e231b
hi Normal guifg=#efeef1
hi Comment guifg=#5c6370
hi vimString guifg=#a56e5f
hi vimLineComment guifg=#5c6370
hi elixirFunctionDeclaration guifg=#ea88b9
hi elixirBlockDefinition guifg=#c092ce
hi Define guifg=#c092ce
hi elixirAlias guifg=#ea88b9
hi CursorLine guibg=#3e2c20
hi LineNr guifg=#764d42
hi CursorLineNr guifg=#5c6370
hi Visual guibg=#483d35


" Some JSON life
hi jsonKeyword guifg=#fe728b
hi jsonQuote guifg=#e55972


" Python stuff
hi pythonBuiltin guifg=#d99f81
hi pythonConditional guifg=#c092ce
hi pythonOperator guifg=#c092ce
hi pythonStatement guifg=#c092ce
hi pythonAttribute guifg=#fe728b
hi link pythonException pythonStatement
hi link pythonFunction pythonBuiltin
hi link pythonExceptions pythonBuiltin
hi link pythonRepeat pythonStatement
hi link NonText LineNr

hi NERDTreeCWD guifg=#ea88b9
hi NERDTreeUp guifg=#d99f81
hi NERDTreeDir guifg=#c092ce
hi NERDTreeDirSlash guifg=#c092ce
hi NERDTreeExecFile guifg=#ea88b9


"ColorColumn	used for the columns set with 'colorcolumn'
							"*hl-Conceal*
"Conceal		placeholder characters substituted for concealed
		"text (see 'conceallevel')
							"*hl-Cursor*
"Cursor		the character under the cursor
							"*hl-CursorIM*
"CursorIM	like Cursor, but used when in IME mode |CursorIM|
							"*hl-CursorColumn*
"CursorColumn	the screen column that the cursor is in when 'cursorcolumn' is
		"set
							"*hl-CursorLine*
"CursorLine	the screen line that the cursor is in when 'cursorline' is
		"set
							"*hl-Directory*
"Directory	directory names (and other special names in listings)
							"*hl-DiffAdd*
"DiffAdd		diff mode: Added line |diff.txt|
							"*hl-DiffChange*
"DiffChange	diff mode: Changed line |diff.txt|
							"*hl-DiffDelete*
"DiffDelete	diff mode: Deleted line |diff.txt|
							"*hl-DiffText*
"DiffText	diff mode: Changed text within a changed line |diff.txt|
							"*hl-ErrorMsg*
"ErrorMsg	error messages on the command line
							"*hl-VertSplit*
"VertSplit	the column separating vertically split windows
							"*hl-Folded*
"Folded		line used for closed folds
							"*hl-FoldColumn*
"FoldColumn	'foldcolumn'
							"*hl-SignColumn*
"SignColumn	column where |signs| are displayed
							"*hl-IncSearch*
"IncSearch	'incsearch' highlighting; also used for the text replaced with
		"":s///c"
							"*hl-LineNr*
"LineNr		Line number for ":number" and ":#" commands, and when 'number'
		"or 'relativenumber' option is set.
							"*hl-CursorLineNr*
"CursorLineNr	Like LineNr when 'cursorline' or 'relativenumber' is set for
		"the cursor line.
							"*hl-MatchParen*
"MatchParen	The character under the cursor or just before it, if it
		"is a paired bracket, and its match. |pi_paren.txt|

							"*hl-ModeMsg*
"ModeMsg		'showmode' message (e.g., "-- INSERT --")
							"*hl-MoreMsg*
"MoreMsg		|more-prompt|
							"*hl-NonText*
"NonText		'~' and '@' at the end of the window, characters from
		"'showbreak' and other characters that do not really exist in
		"the text (e.g., ">" displayed when a double-wide character
		"doesn't fit at the end of the line).
							"*hl-Normal*
"Normal		normal text
							"*hl-Pmenu*
"Pmenu		Popup menu: normal item.
							"*hl-PmenuSel*
"PmenuSel	Popup menu: selected item.
							"*hl-PmenuSbar*
"PmenuSbar	Popup menu: scrollbar.
							"*hl-PmenuThumb*
"PmenuThumb	Popup menu: Thumb of the scrollbar.
							"*hl-Question*
"Question	|hit-enter| prompt and yes/no questions
							"*hl-Search*
"Search		Last search pattern highlighting (see 'hlsearch').
		"Also used for highlighting the current line in the quickfix
		"window and similar items that need to stand out.
							"*hl-SpecialKey*
"SpecialKey	Meta and special keys listed with ":map", also for text used
		"to show unprintable characters in the text, 'listchars'.
		"Generally: text that is displayed differently from what it
		"really is.
							"*hl-SpellBad*
"SpellBad	Word that is not recognized by the spellchecker. |spell|
		"This will be combined with the highlighting used otherwise.
							"*hl-SpellCap*
"SpellCap	Word that should start with a capital. |spell|
		"This will be combined with the highlighting used otherwise.
							"*hl-SpellLocal*
"SpellLocal	Word that is recognized by the spellchecker as one that is
		"used in another region. |spell|
		"This will be combined with the highlighting used otherwise.
							"*hl-SpellRare*
"SpellRare	Word that is recognized by the spellchecker as one that is
		"hardly ever used. |spell|
		"This will be combined with the highlighting used otherwise.
							"*hl-StatusLine*
"StatusLine	status line of current window
							"*hl-StatusLineNC*
"StatusLineNC	status lines of not-current windows
		"Note: if this is equal to "StatusLine" Vim will use "^^^" in
		"the status line of the current window.
							"*hl-TabLine*
"TabLine		tab pages line, not active tab page label
							"*hl-TabLineFill*
"TabLineFill	tab pages line, where there are no labels
							"*hl-TabLineSel*
"TabLineSel	tab pages line, active tab page label
							"*hl-Title*
"Title		titles for output from ":set all", ":autocmd" etc.
							"*hl-Visual*
"Visual		Visual mode selection
							"*hl-VisualNOS*
"VisualNOS	Visual mode selection when vim is "Not Owning the Selection".
		"Only X11 Gui's |gui-x11| and |xterm-clipboard| supports this.
							"*hl-WarningMsg*
"WarningMsg	warning messages
							"*hl-WildMenu*
"WildMenu	current match in 'wildmenu' completion

					"*hl-User1* *hl-User1..9* *hl-User9*
"The 'statusline' syntax allows the use of 9 different highlights in the
"statusline and ruler (via 'rulerformat').  The names are User1 to User9.

"For the GUI you can use the following groups to set the colors for the menu,
"scrollbars and tooltips.  They don't have defaults.  This doesn't work for the
"Win32 GUI.  Only three highlight arguments have any effect here: font, guibg,
"and guifg.

							"*hl-Menu*
"Menu		Current font, background and foreground colors of the menus.
		"Also used for the toolbar.
		"Applicable highlight arguments: font, guibg, guifg.

		"NOTE: For Motif and Athena the font argument actually
		"specifies a fontset at all times, no matter if 'guifontset' is
		"empty, and as such it is tied to the current |:language| when
		"set.

							"*hl-Scrollbar*
"Scrollbar	Current background and foreground of the main window's
		"scrollbars.
		"Applicable highlight arguments: guibg, guifg.

							"*hl-Tooltip*
"Tooltip		Current font, background and foreground of the tooltips.
		"Applicable highlight arguments: font, guibg, guifg.

		"NOTE: For Motif and Athena the font argument actually
		"specifies a fontset at all times, no matter if 'guifontset' is
		"empty, and as such it is tied to the current |:language| when
		"set.
