"**************************
"* V I M  S E T T I N G S *
"**************************
"true colors
set termguicolors

"new leader
nnoremap <SPACE> <Nop>
let mapleader = "\<Space>"

"replace esc
inoremap jj <ESC>

"enable mouse
set mouse=a

"enable line numbers
set nu
set relativenumber

syntax on

set cursorline

"enable use system clipboard (install xclip & xsel)
set clipboard+=unnamedplus

"enaple python provider
let g:loaded_python_provider = 1
let g:python_host_prog = '/usr/bin/python2' 

"persistend undo
set undofile
set undodir=~/.local/share/nvim/undo/undo

"tab settings
set tabstop=4
set expandtab

"*****************
"* P L U G I N S *
"*****************
call plug#begin('~/.local/share/nvim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdtree'
Plug 'joshdick/onedark.vim'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'easymotion/vim-easymotion'
Plug '907th/vim-auto-save'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'jremmen/vim-ripgrep'
Plug 'scrooloose/syntastic'
Plug 'rust-lang/rust.vim'
Plug 'valloric/youcompleteme'
call plug#end()

"**********************************
"* P L U G I N S  S E T T I N G S *
"**********************************
"color scheme onedark
colorscheme onedark

"airline settings
let g:airline_powerline_fonts = 1

"autosave setting
"let g:auto_save = 1

"https://medium.com/@crashybang/supercharge-vim-with-fzf-and-ripgrep-d4661fc853d2
"fzf in file search /broken ... use vim-ripgrep
"command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>), 1, <bang>0)

"rust.vim settings
let g:rustfmt_autosave = 1

"youcomplete me settings
let g:ycm_rust_src_path = '/home/dustin/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/src'
