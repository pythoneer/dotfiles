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

"syntax on

set cursorline
set colorcolumn=120

"enable use system clipboard (install xclip & xsel)
set clipboard+=unnamedplus

"enaple python provider
let g:loaded_python_provider = 1
let g:python_host_prog = '/usr/bin/python2' 

"persistend undo
set undofile
set undodir=~/.local/share/nvim/undo/undo

"tab settings
set tabstop=8
set softtabstop=4
set shiftwidth=4
set expandtab

"*****************
"* P L U G I N S *
"*****************
call plug#begin('~/.local/share/nvim/plugged')
Plug 'vim-airline/vim-airline'

Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

Plug 'joshdick/onedark.vim'
" rainbow 
"Plug 'junegunn/rainbow_parentheses.vim'
Plug 'kien/rainbow_parentheses.vim'

Plug 'airblade/vim-gitgutter'
Plug 'easymotion/vim-easymotion'

" git commandos REMOVING
"Plug 'tpope/vim-fugitive'



" autosave complicates undo REMOVING
"Plug '907th/vim-auto-save'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'jremmen/vim-ripgrep'

"Plug 'scrooloose/syntastic'
Plug 'w0rp/ale'


"Plug 'rust-lang/rust.vim'
"Plug 'valloric/youcompleteme'
"Plug 'Shougo/deoplete.nvim'

" TypeScript                                                                                        
"Plug 'leafgarland/typescript-vim'                                                                   
"Plug 'mhartington/nvim-typescript'   

" autoformat
Plug 'sbdchd/neoformat'  

" auto pair parants
Plug 'jiangmiao/auto-pairs'

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

"nerdtree toogle ctrl-n
map <C-n> :NERDTreeToggle<CR>

"https://medium.com/@crashybang/supercharge-vim-with-fzf-and-ripgrep-d4661fc853d2
"fzf in file search /broken ... use vim-ripgrep
"command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>), 1, <bang>0)

"rust.vim settings
"let g:rustfmt_autosave = 1

"youcomplete me settings
"let g:ycm_rust_src_path = '/home/dustin/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/src'

" Enable deoplete at startup
"let g:deoplete#enable_at_startup = 1

" neoformat 
" js   (npm i -g js-beautify)
" html (npm i -g htmlhint)

" Enable alignment
let g:neoformat_basic_format_align = 1
" Enable tab to spaces conversion
let g:neoformat_basic_format_retab = 1
" Enable trimmming of trailing whitespace
let g:neoformat_basic_format_trim = 1


"Rainbow parants settings
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
au Syntax * RainbowParenthesesLoadChevrons

"linting 
" js (npm install -g eslint)
let g:ale_fixers = {
\   'javascript': ['eslint'],
\}

"**************************
"* V I M  S E T T I N G S *
"**************************
"that needs to be applied after plugins eg onedark(color)

highlight ColorColumn guibg=#252525
highlight CursorLine guibg=#252525
