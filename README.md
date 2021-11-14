## zsh => fishに移行中

- [fish shell](https://github.com/fish-shell/fish-shell)に移行中  
  - [Official document](https://fishshell.com/docs/current/index.html)

```sh
$ brew install fish
$ sudo echo '/usr/local/bin/fish' >> /etc/shells
$ chsh -s /usr/local/bin/fish
```

Install [Fisher](https://github.com/jorgebucaran/fisher).  
Fisherはfish専用のプラグインマネージャー。


## Color Theme of iTerm2

[Jackie Brown](https://raw.githubusercontent.com/mbadolato/iTerm2-Color-Schemes/master/schemes/Jackie%20Brown.itermcolors)

### 他の環境での反映方法
``` 
$ ユーザーディレクトリ（~：チルダ配下）に移動
$ git clone https://github.com/kayawari/dotfiles.git
$ cd dotfiles
$ chmod +x dotfilesLink.sh
//下でシンボリックリンクをルートに作る。管理はdotfiles配下に入れる。
$ ./dotfilesLink.sh 

どうも.vim/bundle配下は作りなおさないと行けないようなので、git cloneし直す。
$ cd ~/dotfiles/.vim/
$ rm -rf bundle
$ mkdir bundle
$ cd bundle
$ git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
（git clone先は更新されてるかもしれないので、要チェック）

これで、vim を起動すればステータスバーにinstallするかどうか確認confirmが出るはず。
```

### zplugについて
zplugでロードしているプラグインもあります。
ref: https://github.com/zplug/zplug/blob/master/doc/guide/ja/README.md

しかし設定を変更したときに、意図せず更新前のキャッシュを利用してしまうことがあります。手動でキャッシュを削除するには以下のコマンドを実行。
```
zplug clear
```

#### zplugのキャッシュについて
zplugはプラグインのロードを高速化するためにキャッシュを利用しています。


### 参考サイト
* http://nwpct1.hatenablog.com/entry/2014/01/14/214128
* [PHPファイルにHTMLを記述したとき、Vimのオートインデントがおかしくなる問題 - Qiita](http://qiita.com/hashiohiro/items/71a47061e91b61bbb189)
* [set pasteについて](http://qiita.com/quwa/items/019250dbca167985fe32)
* [lightline](https://github.com/itchyny/lightline.vim)
* [tyru/caw.vim](https://github.com/tyru/caw.vim)
* [Shougo/Unite.vim](https://github.com/Shougo/unite.vim)

### Docs
|コメンド|処理|
|:----------:|:-----------:|
|ctrl + /|gci（caw.vimでコメントアウト）|
|ctrl + i|cwi（テキストオブエジェクト削除後にインサートモード）|
|shift + a|行頭へ|
|shift + z|行末へ|
