" __/\\\\\\\\\\\\\\\__/\\\\\\\\\\\__/\\\\____________/\\\\_        
"  _\////////////\\\__\/////\\\///__\/\\\\\\________/\\\\\\_       
"   ___________/\\\/_______\/\\\_____\/\\\//\\\____/\\\//\\\_      
"    _________/\\\/_________\/\\\_____\/\\\\///\\\/\\\/_\/\\\_     
"     _______/\\\/___________\/\\\_____\/\\\__\///\\\/___\/\\\_    
"      _____/\\\/_____________\/\\\_____\/\\\____\///_____\/\\\_   
"       ___/\\\/_______________\/\\\_____\/\\\_____________\/\\\_  
"        __/\\\\\\\\\\\\\\\__/\\\\\\\\\\\_\/\\\_____________\/\\\_ 
"         _\///////////////__\///////////__\///______________\///__
"
" My vim configuration

        


" Vundle "{{{
set nocompatible              " be iMproved, required
filetype off                  " required


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" Plugins "{{{
Plugin 'VundleVim/Vundle.vim'
" Faster Editing and navigation
Plugin 'majutsushi/tagbar'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-sleuth.git' " pretty sure this is for better indenting.
Plugin 'L9'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'easymotion/vim-easymotion'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'tommcdo/vim-exchange'

" git support
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'honza/vim-snippets'
Plugin 'airblade/vim-gitgutter'

" rails
Plugin 'tpope/vim-rails'

" python
Plugin 'davidhalter/jedi-vim'

" web
Plugin 'digitaltoad/vim-pug'


" Themes
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
Plugin 'jpo/vim-railscasts-theme'
Plugin 'tomasr/molokai'

" clojure
Plugin 'bhurlow/vim-parinfer'
Plugin 'tpope/vim-fireplace'
Plugin 'kien/rainbow_parentheses.vim'

" language Support
Plugin 'guns/vim-clojure-static'
Plugin 'lambdatoast/elm.vim'
Plugin 'JuliaLang/julia-vim'
Plugin 'elixir-lang/vim-elixir'
Plugin 'rust-lang/rust.vim'
Plugin 'aklt/plantuml-syntax'
" Plugin 'pangloss/vim-javascript'
Plugin 'othree/yajs.vim'


" build tools
Plugin 'benekastah/neomake'
" }}}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
set regexpengine=1
syntax enable
" }}}
" Style "{{{

set background=light
colorscheme solarized 
if has('gui_running')
  set guifont=Fira\ Mono\ 13
endif	

nmap <f2> :set background=light<cr>
nmap <f3> :set background=dark<cr>
nmap <F4> :colorscheme solarized<cr>
nmap <F5> :colorscheme molokai<cr>

set guioptions-=m
set guioptions-=T
" }}}
" Editor "{{{
" Tabs "{{{
set tabstop=2
set shiftwidth=2
set softtabstop=2
set smartindent
set expandtab
" }}}
" SwapFiles "{{{
set swapfile
set dir=~/.tmp
" }}}"
" Ignoring Files "{{{
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/node_modules/*,*.png,*.jpg
let g:ctrlp_custom_ignore = {
      \ 'dir':  '\v[\/]\.(git|hg|svn)$',
      \ 'file': '\v\.(exe|so|dll)$',
      \ }
" }}}"
" NeoVim "{{{
if has('nvim')
  let g:python3_host_prog = '/usr/bin/python'
  let g:loaded_python3_provider = 1
end
" }}}
" User Interface "{{{
set so=7
set statusline=%t
set statusline=%t       "tail of the filename
set statusline+=[%{strlen(&fenc)?&fenc:'none'}, "file encoding
set statusline+=%{&ff}] "file format
set statusline+=%h      "help file flag
set statusline+=%m      "modified flag
set statusline+=%r      "read only flag
set statusline+=%y      "filetype
set statusline+=%=      "left/right separator
set statusline+=%c,     "cursor column
set statusline+=%l/%L   "cursor line/total lines
set statusline+=\P    "percent through file

set laststatus=2
set cmdheight=2
set ruler
set nu
set rnu
set ignorecase
set hlsearch
set magic
set noeb t_vb=
set tm=500

if has("gui_running")
  autocmd GUIEnter * set vb t_vb=
end


" playing nice with the terminal
if !has("nvim")
  set term=screen-256color
end
" }}}
" }}}
" Utility "{{{
" some typeface introspection
"nmap <S-_> :call <SID>SynStack()<CR>
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc
" }}}
" Misc "{{{
" Procfile
autocmd BufNewFile,BufReadPost Procfile set filetype=ruby

" atomish keybinding for nerdree
nmap <c-\> :NERDTreeToggle<cr>
" }}}
