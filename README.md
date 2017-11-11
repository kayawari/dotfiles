# My dotfiles
* .zshrc
* .bashrc
* .bash_profile
* .vimrc
* .viminfo
* .vim/

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

### zshについて
mac osの場合にデフォルトでzshが`/usr/bin`に入っているけれど、バージョンが古いのでhomebrewでインストールしてください。
```
$ cat /etc/shells
$ sudo echo '"/usr/local/bin/zsh"' >> /etc/shells
$ chsh -s /usr/local/bin/zsh
```
インストールするシェルのパスを確認します。多分新しくhomebrewで入れたzshのパスは入っていないと思うので、`etc/shells`に新しいzshのパスを追加
最後に、chsh -sコマンドでログインシェルに反映させる

### 参考サイト_
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
