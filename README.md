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
* [neocomplete設定デフォルト](https://github.com/Shougo/neocomplete.vim)

###プラグイン
* neobundle ：プラグイン管理


