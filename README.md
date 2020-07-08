# provider+changeNotifier

StatelessWidget + provider + changeNotifier  
View を静的にして、値の変更や操作は Model に分離する。

![provider+changeNotifier](https://user-images.githubusercontent.com/13707135/86933996-26d4bf80-c176-11ea-9ae9-2f59e4dc2573.png)

* ユーザ操作を契機とした値の変更は、 changeNotifier の function を呼ぶ
* ユーザ操作やローカルから値を読み出した等で値が変化した場合、 changeNotifier.notifyListeners() を呼ぶことで、値を参照している画面が勝手に更新される

### package

* [provider](https://pub.dev/packages/provider)

## Lisence

MIT
