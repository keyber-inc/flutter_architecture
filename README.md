# flutter_architecture

＋ボタンを押すと数字がカウントアップし、リセットボタンを押すと数字が0にリセットされる簡単なアプリを例に、 Flutter のアーキテクチャをまとめました。

## アプリ

* ＋ボタンを押すと数字がカウントアップします
* リセットボタンを押すと数字が0にリセットされます
* 数字はアプリが終了しても保持され、次回起動時に復元されます

<img width="30%" src="https://user-images.githubusercontent.com/13707135/86941163-98187080-c17e-11ea-9da7-6d93c4208b2c.gif">

## アーキテクチャ

上から簡単な順に並んでいます。  
リンクから各ソースコードを見ることが出来ます。

名称|概要
--|--
[stateful](https://github.com/keyber-inc/flutter_architecture/tree/stateful)|よくある StateFullWidget
[provider+changeNotifier](https://github.com/keyber-inc/flutter_architecture/tree/provider+changeNotifier)|StatelessWidget + Provider パターン
[mvvm](https://github.com/keyber-inc/flutter_architecture/tree/mvvm)|`provider+changeNotifier` のデータまわりを改良
[mvc+state_notifier](https://github.com/keyber-inc/flutter_architecture/tree/mvc+state_notifier)|`mvvm` の ChangeNotifier を StateNotifier に置き換えたパターン

## Lisence

MIT
