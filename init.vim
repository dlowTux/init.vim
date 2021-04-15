set nocompatible              " be iMproved, required
filetype off                  " required
syntax on
set relativenumber
set nu
set nohlsearch
set hidden 
set nowrap
set noswapfile
set nobackup
set incsearch
"ident
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set colorcolumn=80

set signcolumn=yes
" Set status line display
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ [BUFFER=%n]\ %{strftime('%c')}

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Mouse Scrolling
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set mouse=nicr
set clipboard=unnamedplus       " Copy/paste between vim and other programs.

"Search
let mapleader = ","
noremap <leader>w :w<cr>
noremap <leader>gs :CocSearch
noremap <leader>fs :Files<cr>
noremap <leader><cr> <cr><c-w>h:q<cr>
"This open a terminal inside of vim
map <Leader>tt :vnew term://zsh<CR>
"Flutter shortcuts
nnoremap <leader>a :FlutterRun<cr>
nnoremap <leader>q :FlutterQuit<cr>
nnoremap <leader>r :FlutterHotReload<cr>
nnoremap <leader>fR :FlutterHotRestart<cr>
nnoremap <leader>fD :FlutterVisualDebug<cr>
"NerdTree 
map <C-n> :NERDTreeToggle<CR>
map <C-a> :Prettier<CR>
filetype plugin indent on    " required
set t_Co=256                    " Set if term supports 256 colors.
"Plugins
call plug#begin('~/.vim/plugged')
"Ide
Plug 'preservim/nerdtree'  " Menu 
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim' , { 'branch' : 'release' }
Plug 'vim-airline/vim-airline' " The bar
Plug 'ryanoasis/vim-devicons' "Icons
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'jiangmiao/auto-pairs' "Complte the simbol 
Plug 'alvan/vim-closetag'   "Close tag in html
Plug 'yggdroot/indentline' "A ident help for python and other languajes

"JavaScript
Plug 'pangloss/vim-javascript'    " JavaScript support
Plug 'leafgarland/typescript-vim' " TypeScript syntax
Plug 'maxmellon/vim-jsx-pretty' " React syntax
Plug 'HerringtonDarkholme/yats.vim' "TypeScript Syntax

"Dart and flutter 
Plug 'natebosch/vim-lsc'
Plug 'thosakwe/vim-flutter'
Plug 'dart-lang/dart-vim-plugin'
Plug 'natebosch/vim-lsc-dart' 
"Python
Plug 'vim-python/python-syntax' 
"Themes

Plug 'ajmwagar/vim-deus'
Plug 'joshdick/onedark.vim'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'morhetz/gruvbox'
Plug 'kaicataldo/material.vim'
Plug 'ayu-theme/ayu-vim'
call plug#end()
"Python 
let g:python_highlight_all = 1

"colorscheme gruvbox
"colorscheme deus

"Matirial
"let g:material_terminal_italics = 1
"let g:material_theme_style = 'darker'
"colorscheme material

"ayu
"set termguicolors     " enable true colors support
"let ayucolor="mirage"   " for dark version of theme
"colorscheme ayu
"let g:airline_theme = 'ayu'

"onedark
if (has("autocmd") && !has("gui_running"))
augroup colorset
 autocmd!
 let s:white = { "gui": "#ABB2BF", "cterm": "145", "cterm16" : "7" }
 autocmd ColorScheme * call onedark#set_highlight("Normal", { "fg": s:white }) " `bg` will not be styled since there is no `bg` setting
 augroup END
endif

hi Comment cterm=italic
let g:onedark_hide_endofbuffer=1
let g:onedark_terminal_italics=1
let g:onedark_termcolors=256

if(has("termguicolors"))
hi LineNr ctermbg=NONE guibg=NONE
endif

colorscheme onedark
let g:airline_theme = 'onedark'

"Server dart and typescript
let dart_html_in_string=v:true
let g:dart_style_guide = 2
let g:dart_format_on_save = 1
let g:coc_global_extensions = [ 'coc-tsserver' ]

let g:airline_powerline_fonts = 1
" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)



