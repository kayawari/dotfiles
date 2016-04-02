# My dotfiles
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

### oh-my-zsh！！
以下参考
[Mac OS X で zsh ＋ oh-my-zsh の環境を作って一通り設定するまで](http://qiita.com/udzura/items/0d08d71d809bfd8c5981)  
ちなみに、もうoh-my-zshは古いそうようです。  
[まだ oh-my-zsh で消耗してるの？](http://qiita.com/b4b4r07/items/875235f6122a6d779306)  

###_参考サイト_
* http://nwpct1.hatenablog.com/entry/2014/01/14/214128
* [PHPファイルにHTMLを記述したとき、Vimのオートインデントがおかしくなる問題 - Qiita](http://qiita.com/hashiohiro/items/71a47061e91b61bbb189)
* [set pasteについて](http://qiita.com/quwa/items/019250dbca167985fe32)
* [lightline](https://github.com/itchyny/lightline.vim)
* [tyru/caw.vim](https://github.com/tyru/caw.vim)
* [Shougo/Unite.vim](https://github.com/Shougo/unite.vim)

###プラグイン
* neobundle ：プラグイン管理
* unite.vim :ファイル一覧など表示
* lightline :ステータスバーをちょっとかっこよく
* caw.vim :コメントアウトを便利に

