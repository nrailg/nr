set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'Rip-Rip/clang_complete'
Plugin 'gmarik/Vundle.vim'
Plugin 'godlygeek/tabular'
Plugin 'majutsushi/tagbar'
Plugin 'rphillips/fuzzyfinder'
Plugin 'scrooloose/nerdtree'
Plugin 'shibuyanorailgun/gtags.vim'
Plugin 'shibuyanorailgun/snipMate'
Plugin 'tpope/vim-surround'
Plugin 'vim-scripts/AutoComplPop'
Plugin 'vim-scripts/autoload_cscope.vim'

call vundle#end()
filetype plugin indent on

let g:NERDTreeDirArrows = 0
let g:NERDTreeIgnore = ['\.o$', '\.out$', '\.pyc$', '\~$', '\.in$',
      \ '\.lo$', '\.la$', '\.so$', '\.cache$']

let g:tagbar_autofocus = 1
let g:tagbar_show_linenumbers = 1
let g:tagbar_sort = 0

let g:acp_behaviorKeywordLength = 2
let g:acp_completeOption = '.,w,b,u,t,i'
let g:acp_ignorecaseOption = 1
let g:acp_behaviorRubyOmniMethodLength = -1

let g:clang_auto_select = 1
let g:clang_close_preview = 1
let g:clang_complete_auto = 0
let g:clang_library_path = "/usr/lib/llvm-3.4/lib/"
let g:clang_snippets = 1
let g:clang_snippets_engine = 'clang_complete'

syntax enable
syntax on
set backspace=indent,eol,start
set completeopt=menuone,longest
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

nnoremap  ;             :
inoremap  jk            <ESC>
inoremap <C-Y>          <C-X><C-Y>
inoremap <C-E>          <C-X><C-E>
inoremap <C-F>          <C-X><C-F>
inoremap <C-L>          <C-X><C-L>
inoremap <C-O>          <C-X><C-O>
inoremap <C-U>          <Esc>gUiw`]a
nnoremap <C-F>          :<C-F>i
nnoremap <Leader>h      :nohlsearch<CR>
nnoremap <F2>           :NERDTreeToggle<CR>
nnoremap <F3>           :TagbarToggle<CR>
nnoremap <F5>           :w<CR>:make!<CR>
nnoremap <F6>           :!make run<CR>
nnoremap <F7>           :make! debug<CR>
nnoremap <Leader>cc     :cclose<CR>
nnoremap <Leader>ff     :FufFile<CR>
nnoremap <Leader>fb     :FufBookmark<CR>
nnoremap <Leader>fa     :FufAddBookmark<CR>
nnoremap <Leader>bf     :FufBuffer<CR>

abbreviate ip 10.68.33.36

" TODO: TogglePaste
" function! TogglePaste()
" endfunction
" nnoremap <Leader>p      :call TogglePaste()<CR>
