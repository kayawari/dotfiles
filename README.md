新しいPCに乗り換えたときに読んでください

## まずはhomebrewのインストールから

https://brew.sh

## zsh => fishに移行中

- [fish shell](https://github.com/fish-shell/fish-shell)に移行中  
  - [Official document](https://fishshell.com/docs/current/index.html)

デフォルトシェルをfishにしたかったら基本的には以下で対応可能なはず
```sh
$ brew install fish
$ which fish # => 出力されたパスを確認
$ sudo echo '<whichで出力されたパス>' >> /etc/shells
$ chsh -s <whichで出力されたパス>
```

Install [Fisher](https://github.com/jorgebucaran/fisher).  
Fisherはfish専用のプラグインマネージャー。

### 他の環境での反映方法
``` 
$ cd ~
$ ghq get https://github.com/kayawari/dotfiles.git
$ cd ~/dotfiles
$ chmod +x dotfilesLink.sh
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

### 参考サイト

* http://nwpct1.hatenablog.com/entry/2014/01/14/214128
* [PHPファイルにHTMLを記述したとき、Vimのオートインデントがおかしくなる問題 - Qiita](http://qiita.com/hashiohiro/items/71a47061e91b61bbb189)
* [set pasteについて](http://qiita.com/quwa/items/019250dbca167985fe32)
* [lightline](https://github.com/itchyny/lightline.vim)
* [tyru/caw.vim](https://github.com/tyru/caw.vim)
* [Shougo/Unite.vim](https://github.com/Shougo/unite.vim)
