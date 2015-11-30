colorscheme jellybeans
syntax on

" set from vi to vim ???? 
if &compatible
  set nocompatible
endif
set t_Co=256 " screen's color setted 256 color mode. 
set backspace=indent,eol,start " use backspace key.
set clipboard=unnamed,autoselect " use OS's clipoard.
set paste
set mouse=a " accept to use mouse.
set nobackup " do not create swp file.

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
set whichwrap=b,s,h,l,<,>,[,] " Step over the line.
" show invisible characters.
" set list

" Tab and space " setting.
set expandtab " Tabs convert to space key.
set tabstop=4 " Tabs's width.
set shiftwidth=4 " Automatic inserting tab's width.
set smarttab    " If you type tab key in black line, type shiftwidth tab.
set smartindent
set softtabstop=4
set showmatch " highlight matching branckets.
set wrap " Turn down line.

" Search " setting.
set hlsearch " highlight searching character.
set smartcase
set ignorecase
set incsearch " Use incremantal searching mode.
set wrapscan


"==============================
" NeoBundle
"==============================
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

NeoBundle 'StanAngeloff/php.vim'
function! PhpSyntaxOverride()
  hi! def link phpDocTags  phpDefine
  hi! def link phpDocParam phpType
endfunction

augroup phpSyntaxOverride
  autocmd!
  autocmd FileType php call PhpSyntaxOverride()
augroup END

NeoBundle 'scrooloose/syntastic'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


NeoBundle 'shawncplus/phpcomplete.vim'
NeoBundle 'arnaud-lb/vim-php-namespace'

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

NeoBundle 'nono/jquery.vim'




call neobundle#end()
filetype plugin indent on
NeoBundleCheck


"==============================
" keybind
"==============================
