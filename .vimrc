set encoding=utf-8
scriptencoding utf-8

"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  " Let dein manage dein
  " Required:
  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('scrooloose/nerdtree')
  let NERDTreeShowHidden=1
  let g:NERDTreeDirArrowExpandable = '▸'
  let g:NERDTreeDirArrowCollapsible = '▾'
  call dein#add('airblade/vim-gitgutter')
  let g:gitgutter_highlight_lines = 1
  set updatetime=200
  call dein#add("tpope/vim-fugitive")
  " NOTE: fugitiveプラグインのGbrowseコマンドに依存しています
  call dein#add("tpope/vim-rhubarb")
  nnoremap [fugitive]  <Nop>
  nmap <C-g> [fugitive]
  nnoremap <silent> [fugitive]s :Gstatus<CR><C-w>T
  nnoremap <silent> [fugitive]l :Glog<CR>
  nnoremap <silent> [fugitive]d :Gdiff<CR>
  nnoremap <silent> [fugitive]a :Gwrite<CR>
  nnoremap <silent> [fugitive]c :Gcommit<CR>
  nnoremap <silent> [fugitive]m :Gmerge<CR>
  nnoremap <silent> [fugitive]hub :Gbrowse<CR>
  call dein#add('nathanaelkane/vim-indent-guides')
  let g:indent_guides_enable_on_vim_startup = 1
  let g:indent_guides_exclude_filetypes = ['help', 'nerdtree']
  call dein#add('tyru/caw.vim.git')
  " ctrl + / でコメントアウト
  nmap <C-_> <Plug>(caw:hatpos:toggle)
  vmap <C-_> <Plug>(caw:hatpos:toggle)
  call dein#add('ctrlpvim/ctrlp.vim')
  call dein#add('rking/ag.vim')
  if executable('ag')
    let g:ctrlp_use_caching=0
    let g:ctrlp_user_command='ag %s -i --nogroup -g ""'
  endif
  call dein#add('bronson/vim-trailing-whitespace')

  " You can specify revision/branch/tag.
  call dein#add('Shougo/deol.nvim', { 'rev': '01203d4c9' })

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

syntax on
colorscheme molokai
set t_Co=256 " screen's color setted 256 color mode.
set backspace=indent,eol,start " use backspace key.
set clipboard=unnamed,autoselect " use OS's clipoard.
set paste
set mouse=a " accept to use mouse.
set nobackup " do not create swp file.
set noswapfile
set shell=zsh

" setting char code
" https://qiita.com/ahiruman5/items/4f3c845500c172a02935#-%E6%96%87%E5%AD%97%E3%82%B3%E3%83%BC%E3%83%89
set fileencoding=utf-8
set fileencodings=ucs-boms,utf-8,euc-jp,cp932
set fileformats=unix,dos,mac
set ambiwidth=double

set cursorline
set scrolloff=7
set ruler " show ruler on status bar.
set title " show file's title.
set number
set showcmd
set laststatus=2 " Status bar's height.
set statusline=%F%m%r%h%w%=\ %{fugitive#statusline()}\ [%03l,%03v]\ [Total:%L]\ %{strftime(\"%Y/%m/%d\ %H:%M:%S\")}
highlight StatusLine term=NONE cterm=NONE ctermfg=black ctermbg=blue
set cmdheight=1 " message bar in status bar????
set confirm " If you forget to save current file, confirm to save.
set autoread
set helpheight=999 " If call vim's help, show help page in full screen.
set wildmenu
set history=5000
set whichwrap+=h,l,<,>,[,],b,s
set nopaste

" Tab and space setting.
set expandtab " Tabs convert to space key.
set tabstop=2 " Tabs's width.
set shiftwidth=2 " Automatic inserting tab's width.
set autoindent

" Search setting.
set hlsearch " highlight searching character.
set smartcase
set ignorecase
set incsearch " Use incremantal searching mode.
set wrapscan

" shift+aで行頭, shift+zで行末に移動
noremap <S-a> <Esc>^
noremap <S-z> <Esc>$

" ciw（テキストオブジェクトを削除してインサートモードに入るバインドを設定）
nmap <C-i> ciw
