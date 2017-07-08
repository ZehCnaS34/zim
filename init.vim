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


" set the runtime path to include Vundle and initialize
call plug#begin('~/.local/share/nvim/plugged')
" Plug 'L9'
Plug 'Valloric/YouCompleteMe'
Plug 'airblade/vim-gitgutter'
Plug 'aklt/plantuml-syntax'
Plug 'benekastah/neomake'
Plug 'lambdalisue/lista.nvim'
Plug 'altercation/vim-colors-solarized'
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
set nocompatible              " be iMproved, required
syntax enable

if has('gui_running')
  set guifont=Fira\ Mono\ 13
endif

let g:solarized_termcolors = 256
" let g:solarized_termtrans = 1
set background=dark
colorscheme solarized

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
set showtabline=2


autocmd BufNewFile,BufReadPost Procfile set filetype=ruby

let mapleader=" "

nmap <c-\> :NERDTreeToggle<cr>

" Tab tweaks
nmap <Leader>tH :tabfirst<cr>
nmap <Leader>tL :tablast<cr>
nmap <Leader>td :tabclose<cr>
nmap <Leader>th :tabp<cr>
nmap <Leader>tl :tabn<cr>
nmap <Leader>tr :tabc<cr>
nmap <Leader>tt :tabe<cr>

" Configuration bindings
nmap <Leader>Cr :so~/.config/nvim/init.vim<cr>
nmap <Leader>Ce :e<space>~/.config/nvim/init.vim<cr>

" cpanel
nmap <Leader>cc :cclose<cr>

" Fugitive Bindings
nmap <Leader>gs :Gstatus<cr>
nmap <Leader>gp :Gpush<cr>
nmap <Leader>gf :Gpull<cr>

" window
nnoremap <Leader>wd <C-w>c
nnoremap <Leader>wh <C-w>h
nnoremap <Leader>wj <C-w>j
nnoremap <Leader>wk <C-w>k
nnoremap <Leader>wl <C-w>l
nnoremap <Leader>ws <C-w>s
nnoremap <Leader>wv <C-w>v
nnoremap <Leader>ww <C-w>z

nnoremap <Leader>/ :Lista<cr>

if has('nvim')
  let g:python3_host_prog = '/usr/bin/python'
  let g:loaded_python3_provider = 1
end


" Personal functions
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc
nmap <Leader>p :call <SID>SynStack()<CR>
