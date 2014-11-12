set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'Rip-Rip/clang_complete'
Plugin 'SirVer/ultisnips'
Plugin 'gmarik/Vundle.vim'
Plugin 'godlygeek/tabular'
Plugin 'klen/python-mode'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdtree'
Plugin 'shibuyanorailgun/gtags.vim'
Plugin 'shibuyanorailgun/vim-maps'
Plugin 'shibuyanorailgun/vim-snippets'
Plugin 'tpope/vim-surround'
Plugin 'vim-scripts/FuzzyFinder'
Plugin 'vim-scripts/L9'
Plugin 'vim-scripts/MatlabFilesEdition'
Plugin 'vim-scripts/autoload_cscope.vim'
Plugin 'Shougo/neocomplcache.vim'
Plugin 'Shougo/vimproc'

call vundle#end()
filetype plugin indent on

let g:NERDTreeDirArrows = 0
let g:NERDTreeIgnore    = ['\.o$', '\.out$', '\.pyc$', '\~$', '\.in$',
      \ '\.lo$', '\.la$', '\.so$', '\.cache$']
let g:NERDTreeWinPos = 'right'

let g:tagbar_autofocus = 1
let g:tagbar_sort      = 0

let g:UltiSnipsExpandTrigger       = '<Tab>'
let g:UltiSnipsJumpForwardTrigger  = '<Tab>'
let g:UltiSnipsJumpBackwardTrigger = '<C-B>'

let g:acp_enableAtStartup              = 0
let g:acp_completeOption               = '.,w,b,u,t,i'
let g:acp_ignorecaseOption             = 1
let g:acp_behaviorRubyOmniMethodLength = -1
let g:acp_behaviorKeywordLength        = 4

let g:neocomplcache_auto_completion_start_length = 4
let g:neocomplcache_enable_at_startup            = 1
let g:neocomplcache_enable_ignore_case           = 1
let g:neocomplcache_max_list                     = 50

if !exists('g:neocomplcache_sources_list')
  let g:neocomplcache_sources_list = {}
endif
let g:neocomplcache_sources_list._ =
      \ ['buffer_complete', 'include_complete']

if !exists('g:neocomplcache_force_omni_patterns')
  let g:neocomplcache_force_omni_patterns = {}
endif
let g:neocomplcache_force_overwrite_completefunc = 1
let g:neocomplcache_force_omni_patterns.c =
      \ '[^.[:digit:] *\t]\%(\.\|->\)'
let g:neocomplcache_force_omni_patterns.cpp =
      \ '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

let g:clang_auto_select     = 0
let g:clang_close_preview   = 1
let g:clang_complete_auto   = 0
let g:clang_library_path    = "/usr/lib/llvm-3.4/lib/"
let g:clang_snippets        = 0
let g:clang_snippets_engine = 'ultisnips'

let g:pymode_rope_goto_definition_bind = "<C-]>"
let g:pymode_rope_goto_definition_cmd  = 'edit'
let g:pymode_rope_completion           = 0
let g:pymode_folding                   = 0
let g:pymode_lint                      = 0
let g:pymode_run                       = 0
let g:pymode_breakpoint                = 0
let g:pymode_doc                       = 0

syntax enable
syntax on
set backspace=indent,eol,start
set completeopt=menu,menuone,longest
set encoding=utf-8
set expandtab
set exrc
set hidden
set hlsearch
set incsearch
set nowrap
set number
set relativenumber
set shiftwidth=2
set smartcase
set smartindent
set tabstop=2
set ttyfast

if has('gui_running')
  set background=dark
  colorscheme solarized
elseif &term =~ 'xterm'
  set t_Co=256
  colorscheme molokai
  highlight PmenuSel ctermbg=NONE
else
  colorscheme peachpuff
endif
highlight NonText cterm=NONE ctermbg=NONE ctermfg=black
