プラグイン関係
==============

プラグインマネージャー
----------------------

* pathogen

使用しているプラグイン
----------------------

* mru

* qfixhowm

* riv

* vimdoc-ja

VIM設定ファイル
===============

* 現在のファイルの内容をロード(設定ファイル上で実行すると、設定を再ロードできる)。soはsourceの短縮形。%は現在のファイルパスに置き換わる。

  :so %<CR>

* すべての機能項目リスト表示

  :h feature-list<CR>

* オプションをON

  :set {オプション名}<CR>

* オプションをOFF

  :set no{オプション名}<CR>

* オプションのON/OFFをトグル

  :set {オプション名}!<CR>

* オプションのON/OFFをトグル

  :set inv{オプション名 }<CR>

* オプションに値をセット

  :set {オプション名}={値}<CR>

* オプションの現在値を表示

  :set {オプション名}?<CR>

  例 :set tabstop?<CR>
  例 :set ff<CR>
  例 :set fenc<CR>

* オプションの現在値と設定場所を表示

  :verbose set {オプション名}?<CR>

* オプション項目のマニュアルを確実に開く

  :h '{オプション名}'<CR>

  シングルクォートをつける

* すべてのオプション項目リストを開く

  :h option-list<CR>

Git/GitHUb操作
==============

新しい作業環境に組み込む
------------------------

.. code-block:: bash
   $ cd
   $ git clone git@github.com:djaigo88@github.com/dotfiles.git
   $ cd dotfiles
   $ git submodule init
   $ git submodule update
   $ ln -s ~/dotfiles/.vimrc ~/.vimrc
   $ ln -s ~/dotfiles/.vim ~/.vim
   $ ln -s ~/dotfiles/.gvimrc ~/.gvimrc

.. code-block:: doscon
   >mklink "%USERPROFILE%\.vimrc" "%USERPROFILE%\dotfiles\.vimrc"
   >mklink /D "%USERPROFILE%\.vim" "%USERPROFILE%\dotfiles\.vim"
   >mklink /D "%USERPROFILE%\vimfiles" "%USERPROFILE%\dotfiles\.vim"
   >mklink "%USERPROFILE%\.gvimrc" "%USERPROFILE%\dotfiles\.gvimrc"

編集後、GitHubへアップする
--------------------------

.. code-block:: bash
   $ cd ~/dotfiles
   $ git commit -am "{コミットコメント}"
   $ git push

プラグインを追加し、GitHubにアップする
--------------------------------------

.. code-block:: bash
   $ cd ~/dotfiles/.vim
   $ git submodule add {プラグインのURL} bundle/{ブラグイン名}
   $ git commit -m "{コミットコメント}"
   $ git push

作業環境にGitHubの内容を反映する
--------------------------------

.. code-block:: bash
   $ cd ~/dotfiles
   $ git pull
   $ git submodule init
   $ git submodule update

プラグインを削除する
--------------------

.. code-block:: bash
   $ cd ~/dotfiles
   $ git submodule deinit .vim/bundle/{プラグイン名}
   $ git rm .vim/bundle/{プラグイン名}
   $ git commit -m "{コミットコメント}"
   $ rm -rf .git/modules/.vim/bundle/{プラグイン名}
   $ git push
