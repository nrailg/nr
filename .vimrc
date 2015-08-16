set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'SirVer/ultisnips'
Plugin 'Valloric/YouCompleteMe'
Plugin 'gmarik/Vundle.vim'
Plugin 'godlygeek/tabular'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdtree'
Plugin 'shibuyanorailgun/nr-snippets'
Plugin 'shibuyanorailgun/vim-maps'
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-surround'
Plugin 'vim-scripts/FuzzyFinder'
Plugin 'vim-scripts/L9'
Plugin 'vim-scripts/MatlabFilesEdition'

call vundle#end()
filetype plugin indent on

let g:ycm_confirm_extra_conf = 0
let g:ycm_auto_trigger = 1
let g:ycm_key_list_select_completion = ['<C-N>',  '<Down>']
let g:ycm_key_list_previous_completion = ['<C-P>',  '<Up>']
let g:ycm_key_invoke_completion = '<C-O>'
let g:ycm_enable_diagnostic_highlighting = 0 
let g:ycm_enable_diagnostic_signs = 0
let g:ycm_show_diagnostics_ui = 0

let g:NERDTreeDirArrows = 0
let g:NERDTreeIgnore    = ['\.o$', '\.out$', '\.pyc$', '\~$', '\.in$',
      \ '\.lo$', '\.la$', '\.so$', '\.cache$']
let g:NERDTreeWinPos    = 'right'
let g:NERDTreeWinSize   = 60

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
set shiftwidth=8
set smartindent
set tabstop=8
set ttyfast
set cinoptions=(1s,g0,:0,N-s,t0

if has('gui_running')
  set background=dark
  colorscheme solarized
elseif &term =~ 'xterm'
  set t_Co=256
  colorscheme norokai
else
  colorscheme peachpuff
endif
