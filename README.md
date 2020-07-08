# MVC(Model-View-Controller)+state_notifier

StatelessWidget + provider + state_notifier + freezed + LocatorMixin(DI: Dependency Injection) + EntityRepository  
[mvvm](https://github.com/keyber-inc/flutter_architecture/tree/mvvm) の ChangeNotifier を StateNotifier に置き換えたことで、 changeNotifier.notifyListeners() を呼ぶ必要がなくなった。
state_notifier と相性のよい freezed を使って ChangeNotifier が保持する State クラスを自動生成し、 LocatorMixin を使って DI することでテストしやすくした。

![mvc+state_notifier](https://user-images.githubusercontent.com/13707135/86937058-c051a080-c179-11ea-856e-88de92aba543.png)

* ユーザ操作を契機とした値の変更は、 StateNotifier の function を呼ぶ
* ユーザ操作やローカルから値を読み出した等で値が変化した場合、 値を参照している画面が勝手に更新される

### package

* [provider](https://pub.dev/packages/provider)
* [state_notifier](https://pub.dev/packages/state_notifier)
* [freezed](https://pub.dev/packages/freezed)
