# My dotfiles
* .bashrc
* .bash_profile
* .vimrc
* .viminfo
* .vim/

### 他の環境での反映方法
``` 
$ mkdir ~/dotfiles
$ cd dotfiles/
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
* [neocomplete設定デフォルト](https://github.com/Shougo/neocomplete.vim)

###プラグイン
* neobundle ：プラグイン管理
* unite.vim：vimからファイル開いたりできる。[Unite.vimまとめ](http://qiita.com/hide/items/77b9c1b0f29577d60397)
* nerdtree：ディレクトリをツリー表示
* lightline.vim：下のバーの色を変えたりなど、カスタマイズが可能
* Shougo/neocomplete：入力補完（未設定）
* Shougo/neosnippet：スニペット管理（未設定）
* Shougo/neosnippet-snippets：上記のneosnippetのデフォルトのスニペット（未設定）
* vim-javascript：jsのシンタックスとインデント調整
* jshint2.vim：jsのシンタックスエラーなどをしてくれる
* syntactis：各言語のシンタックスエラー確認(デフォルト設定)[scrooloose/syntastic](https://github.com/scrooloose/syntastic#settings)


