# My dotfiles
* .bashrc
* .bash_profile
* .vimrc
* .viminfo
* .vim/

### 他の環境での反映方法
``` 
$ cd doffilesを作りたいディレクトリに移動（~/配下など）
$ git clone https://github.com/kayawari/dotfiles.git
$ chmod +x dotfilesLink.sh
//下でシンボリックリンクをルートに作る。管理はdotfiles配下に入れる。
$ ./dotfilesLink.sh 
```

###_参考サイト_
* http://nwpct1.hatenablog.com/entry/2014/01/14/214128
* [PHPファイルにHTMLを記述したとき、Vimのオートインデントがおかしくなる問題 - Qiita](http://qiita.com/hashiohiro/items/71a47061e91b61bbb189)
* [set pasteについて](http://qiita.com/quwa/items/019250dbca167985fe32)
* [lightline](https://github.com/itchyny/lightline.vim)
* [tyru/caw.vim](https://github.com/tyru/caw.vim)
* [Shougo/Unite.vim](https://github.com/Shougo/unite.vim)

###プラグイン
* neobundle ：プラグイン管理
<<<<<<< HEAD
* unite.vim：vimからファイル開いたりできる。[Unite.vimまとめ](http://qiita.com/hide/items/77b9c1b0f29577d60397)
* nerdtree：ディレクトリをツリー表示
* lightline.vim：下のバーの色を変えたりなど、カスタマイズが可能
* Shougo/neocomplete：入力補完（未設定）
* Shougo/neosnippet：スニペット管理（未設定）
* ~~vim-javascript：jsのシンタックスとインデント調整~~
* ~~jshint2.vim：jsのシンタックスエラーなどをしてくれる~~
* syntactis：各言語のシンタックスエラー確認(デフォルト設定)[scrooloose/syntastic](https://github.com/scrooloose/syntastic#settings)

=======
* unite.vim :ファイル一覧など表示
* lightline :ステータスバーをちょっとかっこよく
* caw.vim :コメントアウトを便利に
>>>>>>> vimrc_comment

