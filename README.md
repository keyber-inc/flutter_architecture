# MVVM(Model-View-ViewModel)

StatelessWidget + provider + changeNotifier + EntityRepository  
[provider+changeNotifier](https://github.com/keyber-inc/flutter_architecture/tree/provider+changeNotifier) の Model 部分のうち、 Entity の取得や保存などの処理を EntityRepository として隠蔽した。  
これにより、 ViewModel は Entity がネットワークから取得したものなのか、ローカルから取得したものなのか意識する必要がなくなる。  

![mvvm](https://user-images.githubusercontent.com/13707135/86935787-3228ea80-c178-11ea-926c-0a37951ca2af.png)

* ユーザ操作を契機とした値の変更は、 changeNotifier の function を呼ぶ
* ユーザ操作やローカルから値を読み出した等で値が変化した場合、 changeNotifier.notifyListeners() を呼ぶことで、値を参照している画面が勝手に更新される

### package

* [provider](https://pub.dev/packages/provider)
