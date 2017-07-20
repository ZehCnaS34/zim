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
Plug 'Valloric/YouCompleteMe'
Plug 'airblade/vim-gitgutter'
Plug 'aklt/plantuml-syntax'
Plug 'altercation/vim-colors-solarized'
Plug 'benekastah/neomake'
Plug 'sjl/gundo.vim'
Plug 'bhurlow/vim-parinfer'
Plug 'digitaltoad/vim-pug'
Plug 'easymotion/vim-easymotion'
Plug 'editorconfig/editorconfig-vim'
Plug 'elixir-lang/vim-elixir'
Plug 'fatih/vim-go'
Plug 'guns/vim-clojure-static'
Plug 'honza/vim-snippets'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/vim-easy-align'
Plug 'kchmck/vim-coffee-script'
Plug 'kien/rainbow_parentheses.vim'
Plug 'lambdatoast/elm.vim'
Plug 'leafgarland/typescript-vim'
Plug 'majutsushi/tagbar'
Plug 'morhetz/gruvbox'
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'rking/ag.vim'
Plug 'rust-lang/rust.vim'
Plug 'scrooloose/nerdtree'
Plug 'tommcdo/vim-exchange'
Plug 'tpope/vim-commentary'
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

" let g:solarized_termcolors = 256
" let g:solarized_termtrans = 1
set background=dark
colorscheme gruvbox

set dir=~/.tmp
set expandtab
set guioptions-=T
set guioptions-=m
set laststatus=2 cmdheight=2 ruler nu rnu ignorecase hlsearch magic noeb t_vb= tm=500
set regexpengine=1
set shiftwidth=2
set mouse=a
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

function! g:CleanTemps()
  execute "!" . "rm -rf ~/.tmp/*.swp"
endfunction

let mapleader=" "

nmap <c-\> :NERDTreeToggle<cr>
nmap <m-\> :Tagbar<cr>

nnore <Leader><Leader> :Commands<cr>
nnore <C-p> :Files<space>.<cr>
nnore <Leader>pf :Files<cr>
nnore <Leader>pb :Buffers<cr>
nnore <Leader>pl :Lines<cr>
nnore <Leader>pt :Tags<cr>
nnore <Leader>pc :Commands<cr>
nnore <Leader>pa :Ag<space>


" Tab tweaks
nnore <Leader>tH :tabfirst<cr>
nnore <Leader>tL :tablast<cr>
nnore <Leader>td :tabclose<cr>
nnore <Leader>tD :tabclose!<cr>
nnore <Leader>th :tabp<cr>
nnore <Leader>tl :tabn<cr>
nnore <Leader>tr :tabc<cr>
nnore <Leader>tt :tabe<cr>

" Vim
nnore <Leader>Tc :call<space>CleanTemps()<cr>

" view maps
nnore <Leader>vm :mkview<cr>
nnore <Leader>vl :loadv<cr>

" buffers
nnoremap <Leader>bd :bdel<cr>
nnoremap <Leader>bl :buffers<cr>

" Configuration bindings
nnore <Leader>Cr :so~/.config/nvim/init.vim<cr>
nnore <Leader>Ce :e<space>~/.config/nvim/init.vim<cr>

" cpanel
nnore <Leader>cc :cclose<cr>

" Fugitive Bindings
nnore <Leader>gs :Gstatus<cr>
nnore <Leader>gp :Gpush<cr>
nnore <Leader>gf :Gpull<cr>
nnore <Leader>gc :Commits<cr>

" window
nnoremap <Leader>wd <C-w>c
nnoremap <Leader>wh <C-w>h
nnoremap <Leader>wj <C-w>j
nnoremap <Leader>wk <C-w>k
nnoremap <Leader>wl <C-w>l
nnoremap <Leader>ws <C-w>s
nnoremap <Leader>wv <C-w>v
nnoremap <Leader>ww <C-w>z

nnore <Leader>Tb :Tagbar<cr>

" Lista
nnoremap <Leader>/ :Lines<cr>

" Quiting/Restarting
nnoremap <Leader>qq :q<cr>
nnoremap <Leader>qQ :qall<cr>
nnoremap ,m :Neomake<cr>

"
" Personal functions
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc
nnore [s :call <SID>SynStack()<CR>


" jsx configuration
let g:jsx_ext_required = 0


" autocmd BufWinLeave *.* mkview!
" autocmd BufWinEnter *.* silent loadview

