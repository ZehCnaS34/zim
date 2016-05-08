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

