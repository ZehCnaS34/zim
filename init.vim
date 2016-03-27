set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-sleuth.git'

Plugin 'tommcdo/vim-exchange'

Plugin 'airblade/vim-gitgutter'
Plugin 'L9'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'JuliaLang/julia-vim'
Plugin 'rust-lang/rust.vim'
Plugin 'aklt/plantuml-syntax'

Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'

Plugin 'easymotion/vim-easymotion'

Plugin 'altercation/vim-colors-solarized'
Plugin 'elixir-lang/vim-elixir'
Plugin 'tomasr/molokai'
Plugin 'jiangmiao/auto-pairs'
Plugin 'pangloss/vim-javascript'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'benekastah/neomake'
Plugin 'chriskempson/vim-tomorrow-theme'
Plugin 'nanotech/jellybeans.vim'
Plugin 'jnurmine/Zenburn'

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

" style
set background=dark
colorscheme zenburn
if has('gui_running')
	set guifont=Fira\ Mono\ 13
endif	

set guioptions-=m
set guioptions-=T


" tabs
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smartindent


" fucking swaps
set swapfile
set dir=~/.tmp

" ignore some bullshit
set wildignore+=*/tmp/*,*.so,*.swp,*.zip 
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ }

if has('nvim')
  let g:python3_host_prog = '/usr/bin/python'
  let g:loaded_python3_provider = 1
end


" ui
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
set statusline+=\ %P    "percent through file

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
set term=screen-256color
