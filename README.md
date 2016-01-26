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

###プラグイン
* neobundle ：プラグイン管理
* unite.vim：vimからファイル開いたりできる。
* lightline.vim：下のバーの色を変えたりなど、カスタマイズが可能
* Shougo/neocomplete：入力補完
* Shougo/neosnippet：スニペット管理
* Shougo/neosnippet-snippets：上記のneosnippetのデフォルトのスニペット
* vim-javascript：jsのシンタックスとインデント調整
* jshint2.vim：jsのシンタックスエラーなどをしてくれる
* neocomplete-php.vim：phpのデフォルト関数の補完 
