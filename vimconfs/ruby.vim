call dein#add('Shougo/deoplete-rct',      { 'on_ft': 'ruby' })
call dein#add('fishbullet/deoplete-ruby', { 'on_ft': 'ruby' })

" you need install rcodetools or solargraph
" gem install rcodetools
" gem install solargraph
call dein#add('osyo-manga/vim-monster',   { 'on_ft': 'ruby' })
hook_add = '''
let g:monster#completion#rcodetools#backend = "async_rct_complete"
let g:deoplete#sources#omni#input_patterns = {
  \ "ruby" : '[^. *\t]\.\w*\|\h\w*::',
  \}
'''
call dein#add('tpope/vim-endwise',        { 'on_ft': 'ruby' })

