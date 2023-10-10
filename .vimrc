" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'ctrlpvim/ctrlp.vim'
Plug 'godlygeek/tabular'
Plug 'majutsushi/tagbar', {'on': 'TagbarToggle'}
Plug 'nrailgun/vim-maps'
Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}
Plug 'vim-scripts/L9'

" Initialize plugin system
call plug#end()

let g:NERDTreeDirArrows = 0
let g:NERDTreeIgnore    = ['\.o$', '\.out$', '\.pyc$', '\~$', '\.in$', '\.lo$', '\.la$', '\.so$', '\.cache$', '\.class$', '__pycache__']
let g:NERDTreeWinPos    = 'right'
let g:NERDTreeWinSize   = 60

let g:tagbar_autofocus      = 1
let g:tagbar_foldlevel      = 1
let g:tagbar_hide_nonpublic = 0
let g:tagbar_sort           = 0
let g:tagbar_width          = 60
let g:tagbar_type_go = {
	\ 'ctagstype' : 'go',
	\ 'kinds' : [
		\ 'p:package',
		\ 'i:imports:1',
		\ 'c:constants',
		\ 'v:variables',
		\ 't:types',
		\ 'n:interfaces',
		\ 'w:fields',
		\ 'e:embedded',
		\ 'm:methods',
		\ 'r:constructor',
		\ 'f:functions'
	\ ],
	\ 'sro' : '.',
	\ 'kind2scope' : { 't' : 'ctype', 'n' : 'ntype' },
	\ 'scope2kind' : { 'ctype' : 't', 'ntype' : 'n' },
	\ 'ctagsbin' : 'gotags', 'ctagsargs' : '-sort -silent'
	\ }

let g:go_def_mode = 'godef'
let g:go_fmt_command = "goimports"
let g:go_highlight_fields = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_functions = 1
let g:go_highlight_types = 1

let g:ctrlp_map = ''
let g:ctrlp_max_files = 0
let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
if executable('ag')
	let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif
let g:ctrlp_custom_ignore = {
			\ 'dir':  '\v[\/]\.(git|hg|svn)$',
			\ 'file': '\v\.(exe|o|so|a|pyc|dll)$',
			\ }

set noswapfile
set backspace=indent,eol,start
set cinoptions=(0,:0,g-1,t0,N-s
set colorcolumn=+1,+11
set completeopt=menu,menuone,longest
set encoding=utf-8
set exrc
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set fileformat=unix
set foldlevelstart=99
set foldmethod=indent
set formatoptions-=t
set hidden
set hlsearch
set incsearch
set noignorecase
set nowrap
set number
set relativenumber
set textwidth=100
syntax enable
syntax on

" indent with space
set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=2

if has('gui_running')
	set background=dark
	colorscheme solarized
elseif &term =~ 'xterm'
	set t_Co=256
	colorscheme molokai
	highlight PmenuSel ctermfg=81 ctermbg=244 guibg=#808080
else
	colorscheme peachpuff
endif

autocmd BufNewFile,BufRead *.h   set ft=cpp
autocmd BufNewFile,BufRead *.cu  set ft=cpp
autocmd BufNewFile,BufRead *.cuh set ft=cpp
