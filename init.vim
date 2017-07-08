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

set nocompatible              " be iMproved, required
filetype off                  " required



" set the runtime path to include Vundle and initialize
call plug#begin('~/.local/share/nvim/plugged')
Plug 'L9'
Plug 'Valloric/YouCompleteMe'
Plug 'airblade/vim-gitgutter'
Plug 'aklt/plantuml-syntax'
Plug 'benekastah/neomake'
Plug 'bhurlow/vim-parinfer'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'davidhalter/jedi-vim'
Plug 'digitaltoad/vim-pug'
Plug 'easymotion/vim-easymotion'
Plug 'editorconfig/editorconfig-vim'
Plug 'elixir-lang/vim-elixir'
Plug 'fatih/vim-go'
Plug 'guns/vim-clojure-static'
Plug 'honza/vim-snippets'
Plug 'jiangmiao/auto-pairs'
Plug 'kchmck/vim-coffee-script'
Plug 'kien/rainbow_parentheses.vim'
Plug 'lambdatoast/elm.vim'
Plug 'leafgarland/typescript-vim'
Plug 'majutsushi/tagbar'
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'rking/ag.vim'
Plug 'rust-lang/rust.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'tommcdo/vim-exchange'
Plug 'tpope/vim-fireplace'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
call plug#end()            " required

filetype plugin indent on    " required
let g:ycm_python_binary_path = '/usr/bin/python3'

syntax enable

colorscheme gruvbox
if has('gui_running')
  set guifont=Fira\ Mono\ 13
endif

set background=dark
set dir=~/.tmp
set expandtab
set guioptions-=T
set guioptions-=m
set laststatus=2 cmdheight=2 ruler nu rnu ignorecase hlsearch magic noeb t_vb= tm=500
set regexpengine=1
set shiftwidth=2
set smartindent
set so=7
set softtabstop=2
set statusline+=%=      "left/right separator
set statusline+=%c,     "cursor column
set statusline+=%h      "help file flag
set statusline+=%l/%L   "cursor line/total lines
set statusline+=%m      "modified flag
set statusline+=%r      "read only flag
set statusline+=%y      "filetype
set statusline+=%{&ff}] "file format
set statusline+=[%{strlen(&fenc)?&fenc:'none'}, "file encoding
set statusline+=\P    "percent through file
set statusline=%t
set statusline=%t       "tail of the filename
set swapfile
set tabstop=2
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/node_modules/*,*.png,*.jpg

if has("gui_running")
  autocmd GUIEnter * set vb t_vb=
end


" playing nice with the terminal
if !has("nvim") && !has("gui_running")
  set term=screen-256color
end


autocmd BufNewFile,BufReadPost Procfile set filetype=ruby

let mapleader=" "

nmap <c-\> :NERDTreeToggle<cr>
nmap <Leader>tt :tabe<cr>
nmap <Leader>th :tabp<cr>
nmap <Leader>tH :tabfirst<cr>
nmap <Leader>tl :tabn<cr>
nmap <Leader>tL :tablast<cr>
nmap <Leader>tr :tabc<cr>

let g:ctrlp_custom_ignore = {
      \ 'dir':  '\v[\/]\.(git|hg|svn)$',
      \ 'file': '\v\.(exe|so|dll)$',
      \ }
if has('nvim')
  let g:python3_host_prog = '/usr/bin/python'
  let g:loaded_python3_provider = 1

end


function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc
nmap <Leader>p :call <SID>SynStack()<CR>
