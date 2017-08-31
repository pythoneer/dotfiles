"**************************
"* V I M  S E T T I N G S *
"**************************
"true colors
set termguicolors

"new leader
let mapleader = "\<Space>"

"replace esc
inoremap jj <ESC>

"enable mouse
set mouse=a

"enable line numbers
set nu
:set relativenumber

syntax on

set cursorline

"enable use system clipboard (install xclip & xsel)
set clipboard+=unnamedplus

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
call plug#end()

"**********************************
"* P L U G I N S  S E T T I N G S *
"**********************************
"color scheme onedark
colorscheme onedark

"airline settings
let g:airline_powerline_fonts = 1

"autosave setting
let g:auto_save = 1

"https://medium.com/@crashybang/supercharge-vim-with-fzf-and-ripgrep-d4661fc853d2
"fzf in file search /broken ... use vim-ripgrep
"command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>), 1, <bang>0)

