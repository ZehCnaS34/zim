set background=dark
highlight clear
if exists("syntax_on")
  syntax reset
end
let g:colors_name = "Cake"

" This is a comment
hi Normal guibg=#2e231b
hi Normal guifg=#efeef1
hi Operator guifg=#efeef1
hi Comment guifg=#5c6370
hi Keyword guifg=#fe728b
hi Repeat guifg=#fe728b
hi Conditional guifg=#fe728b
hi vimString guifg=#a56e5f
hi vimLineComment guifg=#5c6370
hi Type guifg=#d99f81
hi elixirFunctionDeclaration guifg=#ea88b9
hi elixirBlockDefinition guifg=#c092ce
hi Define guifg=#c092ce
hi elixirAlias guifg=#ea88b9
hi CursorLine guibg=#3e2c20
hi LineNr guifg=#764d42
hi CursorLineNr guifg=#5c6370
hi Visual guibg=#483d35


hi vimHiGuiFgBg guifg=#d99f81
hi helpHyperTextJump guifg=#d99f81
hi helpNotVi guifg=#d99f81
hi helpSpecial guifg=#fe728b
hi helpVim guifg=#e55972

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
hi NERDTreeHelp guifg=#fe728b
hi NERDTreeHelpKey guifg=#c092ce

" Vim
hi vimHighlight guifg=#ea88b9
hi vimHiGroup guifg=#c092ce
hi vimHLGroup guifg=#efeef1

hi vimVar guifg=#fe728b
hi vimLet guifg=#c092ce
hi link vimCommand vimLet
hi link VimGroup vimHiGroup

hi link vimSynType vimOption
hi vimFuncName guifg=#d99f81
hi link vimSynType Type

hi juliaBlKeyword guifg=#d99f81

hi markdownH1 guifg=#fe728b
hi link markdownHeadingRule markdownH1 
hi link markdownH2 markdownH1 
hi link markdownH3 markdownH1 
hi link markdownH4 markdownH1 
hi link markdownListMarker markdownH1 
hi link markdownCodeDelimiter markdownH1 

