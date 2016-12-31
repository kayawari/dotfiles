"NeoBundle Scripts-----------------------------
if &compatible
set nocompatible               " Be iMproved
endif

" Required:
set runtimepath^=~/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('~/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'Shougo/unite.vim'

" ==================================
" ここから下にプラグインを追加してください
" ==================================
NeoBundle 'tpope/vim-fugitive'

NeoBundle 'itchyny/lightline.vim'
let g:lightline = {
\ 'colorscheme' : 'molokai',
\ 'active': {
\   'left': [['mode'],['fugitive','filename']],
\   'right': [[ 'syntastic', 'lineinfo' ], [ 'fileformat', 'fileencoding', 'filetype' ]]
\   },
\ 'component' : {
\   'readonly': '%{&filetype=="help"?"":&readonly?"RO":""}',
\   },
\ 'component_function': {
\   'fugitive': 'MyFugitive',
\   
\ },
\ }

" lightlineにfugitiveのメソッドで呼び出したブランチ名を表示する
function! MyFugitive()
  try
    if &ft !~? 'vimfiler\|gundo' && exists('*fugitive#head') && strlen(fugitive#head())
      return fugitive#head()
    endif
  catch
  endtry
  return ''
endfunction


NeoBundle "tyru/caw.vim.git"
" ctrl + / でコメントアウト
nmap <C-_> <Plug>(caw:hatpos:toggle)
vmap <C-_> <Plug>(caw:hatpos:toggle)

NeoBundle 'scrooloose/nerdtree'
nnoremap :tre :NERDTree

NeoBundle 'Shougo/neocomplete.vim'
" =================================================================
" Start neocomplete setting
" =================================================================
"Note: This option must be set in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
let g:acp_enableAtStartup = 0
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
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
" =================================================================
" End neocomplete setting =====================
" =================================================================

NeoBundle 'airblade/vim-gitgutter'
let g:gitgutter_highlight_lines = 1
let g:gitgutter_override_sign_column_highlight = 0
highlight SignColumn ctermbg=black

NeoBundle 'nathanaelkane/vim-indent-guides'
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_exclude_filetypes = ['help', 'nerdtree'] "インデントハイライトを無効にしたいファイルタイプ　
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=grey   ctermbg=grey
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=darkgrey ctermbg=darkgrey

NeoBundle 'soramugi/auto-ctags.vim'
" ファイル保存時にctagsを更新
let g:auto_ctags = 1

NeoBundle 'tpope/vim-surround'

NeoBundle "ctrlpvim/ctrlp.vim"

NeoBundle "tpope/vim-rails"

NeoBundle "tpope/vim-endwise"

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------


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

" shift+aで行頭, shift+zで行末に移動
noremap <S-a> <Esc>^
noremap <S-z> <Esc>$

" ciw（テキストオブジェクトを削除してインサートモードに入るバインドを設定）
nmap <C-i> ciw
