colorscheme molokai
syntax on
set nocompatible " set from vi to vim ???? 
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
set laststatus=3 " Status bar's height.
set cmdheight=2 " message bar in status bar????
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

call neobundle#end()
filetype plugin indent on
NeoBundleCheck
