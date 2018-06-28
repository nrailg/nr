" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'SirVer/ultisnips'
Plug 'godlygeek/tabular'
Plug 'honza/vim-snippets'
Plug 'majutsushi/tagbar', { 'on': 'TagbarToggle' }
Plug 'nrailgun/vim-maps'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'vim-scripts/FuzzyFinder'
Plug 'vim-scripts/L9'

" Initialize plugin system
call plug#end()

let g:NERDTreeDirArrows = 0
let g:NERDTreeIgnore    = ['\.o$', '\.out$', '\.d$', '\.pyc$', '\~$', '\.in$', '\.lo$', '\.la$', '\.so$', '\.cache$', '\.class$']
let g:NERDTreeWinPos    = 'right'
let g:NERDTreeWinSize   = 60

let g:tagbar_autofocus      = 1
let g:tagbar_foldlevel      = 1
let g:tagbar_hide_nonpublic = 1
let g:tagbar_sort           = 0
let g:tagbar_width          = 60

let g:UltiSnipsExpandTrigger       = '<Tab>'
let g:UltiSnipsJumpBackwardTrigger = '<C-B>'
let g:UltiSnipsJumpForwardTrigger  = '<Tab>'

let g:gtag_enter_win_cclose = 1

syntax enable
syntax on
set backspace=indent,eol,start
set cinoptions=(1s,g0,:0,N-s,t0
set colorcolumn=+1,+11
set completeopt=menu,menuone,longest
set encoding=utf-8
set exrc
set hidden
set hlsearch
set incsearch
set nowrap
set number
set relativenumber
set smartindent
set textwidth=90
set ttyfast

if has('gui_running')
	set background=dark
	colorscheme solarized
elseif &term =~ 'xterm'
	set t_Co=256
	colorscheme norokai
else
	colorscheme peachpuff
endif

autocmd BufNewFile,BufRead *.h   set ft=cpp
autocmd BufNewFile,BufRead *.cu  set ft=cpp
autocmd BufNewFile,BufRead *.cuh set ft=cpp
