set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"Plugin 'Rip-Rip/clang_complete'
Plugin 'SirVer/ultisnips'
Plugin 'gmarik/Vundle.vim'
Plugin 'godlygeek/tabular'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdtree'
Plugin 'nrailgun/nr-snippets'
Plugin 'nrailgun/vim-maps'
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-surround'
Plugin 'vim-scripts/FuzzyFinder'
Plugin 'vim-scripts/L9'
Plugin 'vim-scripts/MatlabFilesEdition'

call vundle#end()
filetype plugin indent on

let g:clang_auto_select     = 0
let g:clang_close_preview   = 1
let g:clang_complete_auto   = 0
let g:clang_library_path    = "/usr/lib/llvm-3.4/lib/"
let g:clang_snippets        = 0
let g:clang_snippets_engine = 'ultisnips'

let g:NERDTreeDirArrows = 0
let g:NERDTreeIgnore    = ['\.o$', '\.out$', '\.d$', '\.pyc$', '\~$', '\.in$',
			\ '\.lo$', '\.la$', '\.so$', '\.cache$', '\.class$']
let g:NERDTreeWinSize   = 60
let g:NERDTreeWinPos    = 'right'

let g:tagbar_autofocus = 1
let g:tagbar_sort      = 0
let g:tagbar_width     = 60

let g:UltiSnipsExpandTrigger       = '<Tab>'
let g:UltiSnipsJumpForwardTrigger  = '<Tab>'
let g:UltiSnipsJumpBackwardTrigger = '<C-B>'

let g:gtag_enter_win_cclose = 1

syntax enable
syntax on
set backspace=indent,eol,start
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
set ttyfast
set cinoptions=(1s,g0,:0,N-s,t0
set foldcolumn=10
set textwidth=90
set colorcolumn=+1,+11
set cursorline
set cursorcolumn

if has('gui_running')
	set background=dark
	colorscheme solarized
	set guifont=MonospaceTypewriter\ Medium\ 13
elseif &term =~ 'xterm'
	set t_Co=256
	colorscheme norokai
	"colorscheme molokai
else
	colorscheme peachpuff
endif

autocmd BufNewFile,BufRead *.cu  set ft=cpp
autocmd BufNewFile,BufRead *.cuh set ft=cpp
