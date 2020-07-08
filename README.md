# MVVM(Model-View-ViewModel)

StatelessWidget + Providerパッケージ + Repository + Entity  
Provider パターンの Model 部分のうち、 データまわりを Repository に隠蔽し、データを Entity にまとめた。  
これにより、 ViewModel は データがネットワークから取得したものなのか、ローカルから取得したものなのか意識する必要がなくなる。  

![mvvm](https://user-images.githubusercontent.com/13707135/86898025-22db7a00-c143-11ea-9f86-080e42a5eeb6.png)

