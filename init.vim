"true colors
set termguicolors

"plugins
call plug#begin('~/.local/share/nvim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdtree'
Plug 'joshdick/onedark.vim'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'easymotion/vim-easymotion'
call plug#end()

"color scheme onedark
syntax on
colorscheme onedark

"enable mouse
set mouse=a

"enable line numbers
set nu
:set relativenumber

"settings airline
let g:airline_powerline_fonts = 1
