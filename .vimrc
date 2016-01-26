colorscheme jellybeans
syntax on

set t_Co=256 " screen's color setted 256 color mode. 
set backspace=indent,eol,start " use backspace key.
set clipboard=unnamed,autoselect " use OS's clipoard.
set paste
set mouse=a " accept to use mouse.
set nobackup " do not create swp file.
set shell=zsh

set cursorline 
set cursorcolumn
set scrolloff=7
set ruler " show ruler on status bar.
set title " show file's title.
set number
set showcmd
set laststatus=2 " Status bar's height.
set cmdheight=1 " message bar in status bar????
set confirm " If you forget to save current file, confirm to save.
set autoread
set helpheight=999 " If call vim's help, show help page in full screen.
set history=5000
set whichwrap+=h,l,<,>,[,],b,s

" Tab and space setting.
set expandtab " Tabs convert to space key.
set tabstop=4 " Tabs's width.
set shiftwidth=4 " Automatic inserting tab's width.
set smarttab    " If you type tab key in black line, type shiftwidth tab.
set smartindent
set autoindent
set softtabstop=4
set showmatch " highlight matching branckets.
set wrap " Turn down line.

" Search setting.
set hlsearch " highlight searching character.
set smartcase
set ignorecase
set incsearch " Use incremantal searching mode.
set wrapscan

noremap <S-h> <Esc>^
noremap <S-b> <Esc>$


" ==============================
" NeoBundle
" ==============================
filetype off
if 0 | endif

 if has('vim_starting')
   if &compatible
     " set nocompatible               " Be iMproved
   endif

   " Required:
   set runtimepath+=~/dotfiles/.vim/bundle/neobundle.vim/
endif
call neobundle#begin(expand('~/dotfiles/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'Shougo/unite.vim'
let g:unite_enable_start_insert=1
noremap <C-B> :Unite buffer<CR>
noremap <C-F> :Unite -buffer-name=file file<CR>
au FileType unite nnoremap <silent> <buffer> <ESC><ESC> :q<CR>
au FileType unite inoremap <silent> <buffer> <ESC><ESC> <ESC>:q<CR>


NeoBundle 'scrooloose/nerdtree'
noremap <C-T> :NERDTree<CR>


NeoBundle 'itchyny/lightline.vim'
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'component': {
      \   'readonly': '%{&filetype=="help"?"":&readonly?"x":""}',
      \   'modified': '%{&filetype=="help"?"":&modified?"+":&modifiable?"":"-"}'
      \ },
      \ 'component_visible_condition': {
      \   'readonly': '(&filetype!="help"&& &readonly)',
      \   'modified': '(&filetype!="help"&&(&modified||!&modifiable))'
      \ },
      \ 'separator': { 
      \    'left': '|', 'right': '|' 
      \ },
      \ 'subseparator': {
      \    'left': '|', 'right': '|' 
      \ }
\ }


NeoBundle 'Shougo/neocomplete'
NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/neosnippet-snippets'

"Note: This option must set it in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
\ 'default' : '',
\ 'vimshell' : $HOME.'/.vimshell_hist',
\ 'scheme' : $HOME.'/.gosh_completions'
\ }

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
" For no inserting <CR> key.
"return pumvisible() ? "\<C-y>" : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? "\<C-y>" : "\<Space>"

" AutoComplPop like behavior.
"let g:neocomplete#enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplete#enable_auto_select = 1
"let g:neocomplete#disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
let g:neocomplete#sources#omni#input_patterns = {}
endif
"let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
"let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
"let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'





"==============================
" For javascript
"==============================
NeoBundle 'pangloss/vim-javascript'
let g:javascript_conceal_function   = "ƒ"
let g:javascript_conceal_null       = "ø"
let g:javascript_conceal_this       = "@"
let g:javascript_conceal_return     = "⇚"
let g:javascript_conceal_undefined  = "¿"
let g:javascript_conceal_NaN        = "ℕ"
let g:javascript_conceal_prototype  = "¶"
let g:javascript_conceal_static     = "•"
let g:javascript_conceal_super      = "Ω"

NeoBundle 'Shutnik/jshint2.vim'
let jshint2_read = 1
let jshint2_save = 1
let jshint2_close = 0
let jshint2_confirm = 0
let jshint2_color = 0
let jshint2_error = 0
let jshint2_min_height = 3
let jshint2_max_height = 12



call neobundle#end()
filetype plugin indent on
NeoBundleCheck
