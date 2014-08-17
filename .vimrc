set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'Rip-Rip/clang_complete'
Plugin 'SirVer/ultisnips'
Plugin 'gmarik/Vundle.vim'
Plugin 'klen/python-mode'
Plugin 'scrooloose/nerdtree'
Plugin 'shibuyanorailgun/gtags.vim'
Plugin 'shibuyanorailgun/vim-maps'
Plugin 'shibuyanorailgun/vim-snippets'
Plugin 'tpope/vim-surround'
Plugin 'vim-scripts/AutoComplPop'
Plugin 'vim-scripts/FuzzyFinder'
Plugin 'vim-scripts/L9'
Plugin 'vim-scripts/autoload_cscope.vim'
Plugin 'vim-scripts/taglist.vim'

call vundle#end()
filetype plugin indent on

let g:NERDTreeDirArrows = 0
let g:NERDTreeIgnore = ['\.o$', '\.out$', '\.pyc$', '\~$', '\.in$',
      \ '\.lo$', '\.la$', '\.so$', '\.cache$']

let g:Tlist_Use_Right_Window = 1
let g:Tlist_Show_One_File = 1
let g:Tlist_GainFocus_On_ToggleOpen = 1

let g:UltiSnipsExpandTrigger="<Tab>"
let g:UltiSnipsJumpForwardTrigger="<Tab>"
let g:UltiSnipsJumpBackwardTrigger="<C-B>"

let g:acp_enableAtStartup = 1
let g:acp_behaviorKeywordLength = 6
let g:acp_completeOption = '.,w,b,u,t,i'
let g:acp_ignorecaseOption = 1
let g:acp_behaviorRubyOmniMethodLength = -1

let g:clang_auto_select = 1
let g:clang_close_preview = 1
let g:clang_complete_auto = 0
let g:clang_library_path = "/usr/lib/llvm-3.4/lib/"
let g:clang_snippets = 1
let g:clang_snippets_engine = 'ultisnips'

let g:pymode_rope_goto_definition_bind = "<C-]>"
let g:pymode_rope_goto_definition_cmd = 'edit'
let g:pymode_rope_completion = 0
let g:pymode_folding = 0
let g:pymode_lint = 0
let g:pymode_run = 0
let g:pymode_breakpoint = 0
let g:pymode_doc = 0

syntax enable
syntax on
set backspace=indent,eol,start
set completeopt=menu,menuone,longest
set cursorcolumn
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
  colorscheme default
endif
highlight NonText cterm=NONE ctermbg=NONE ctermfg=black
