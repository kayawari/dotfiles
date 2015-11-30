colorscheme molokai
syntax on
set t_Co=256
set nocompatible
filetype off
set cursorline
set cursorcolumn
set showmatch
set number
set ruler
set laststatus=2
set title
set confirm
set autoread
set nobackup
set noswapfile
set cmdheight=2
set expandtab
set tabstop=4
set shiftwidth=4
set smarttab
set smartindent
set softtabstop=4
set hlsearch
set mouse=a
set wrap
set backspace=indent,eol,start
set smartcase
set history=5000
set clipboard+=unnamed
set whichwrap=b,s,h,l,<,>,[,]

if 0 | endif

 if has('vim_starting')
   if &compatible
     set nocompatible               " Be iMproved
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
