"NeoBundle Scripts-----------------------------
if &compatible
set nocompatible               " Be iMproved
endif

" Required:
set runtimepath^=/Users/kayamelo/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('/Users/kayamelo/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'Shougo/unite.vim'
" Add or remove your Bundles here:
NeoBundle 'itchyny/lightline.vim'
<<<<<<< HEAD
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


NeoBundle 'scrooloose/syntastic'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

=======
NeoBundle "tyru/caw.vim.git"
nmap <Leader><Leader> <Plug>(caw:hatpos:toggle)
vmap <Leader><Leader> <Plug>(caw:hatpos:toggle)
nmap <Leader><C-e> <Plug>(caw:a:toggle)
vmap <Leader><C-e> <Plug>(caw:a:toggle)
>>>>>>> vimrc_comment

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------


colorscheme molokai
syntax on
set t_Co=256 " screen's color setted 256 color mode. 
set backspace=indent,eol,start " use backspace key.
set clipboard=unnamed,autoselect " use OS's clipoard.
set paste
set mouse=a " accept to use mouse.
set nobackup " do not create swp file.
set noswapfile
set shell=zsh

set cursorline 
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
set tabstop=2 " Tabs's width.
set shiftwidth=2 " Automatic inserting tab's width.
set autoindent

" Search setting.
set hlsearch " highlight searching character.
set smartcase
set ignorecase
set incsearch " Use incremantal searching mode.
set wrapscan

" Cursor moves to top or bottom of line.
noremap <S-a> <Esc>^
noremap <S-z> <Esc>$
