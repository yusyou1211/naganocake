# Nagano-Cake

DMMWEBCAMPのチーム開発で作成したECサイトとなります。

# 概要
長野県にある小さな洋菓子店「ながのCAKE」の商品を通販するためのECサイト開発。

# 背景
元々近隣住民が顧客だったが、昨年始めたInstagramから人気となり、全国から注文が来るようになった。InstagramのDMやメールで通販の注文を受けていたが、情報管理が煩雑になってきたため、管理機能を含んだ通販サイトを開設しようと思い至った。

# アプリケーションの設計

[テーブル定義書](https://docs.google.com/spreadsheets/d/1RdQe6fIJm60TtGCa-ixzf1_GI87OnUiiLSUhLqXl4Z0/edit#gid=1373217982)

[アプリケーション詳細設計書](https://docs.google.com/spreadsheets/d/14O65CT9Sn7ogGSK-HlNqdlj0NbyILfxa8sOldZaXLjo/edit#gid=549108681)

![ER図](https://user-images.githubusercontent.com/106585979/191876287-155c5593-7e2a-47d5-b35d-6a232cb65576.png)


# 言語やフレームワークのバージョン
* ruby 3.1.2
* gem  3.3.7
* gem 'devise'
* gem "enum_help"
* gem 'kaminari'
* gem 'bootstrap'
* gem 'image_processing'
* "@fortawesome/fontawesome-free": "5.15.4"
* "@rails/activestorage": "^6.0.0",
* Rails 6.1.7
* git version 2.37.1

# 機能一覧

 顧客側
【会員未登録】

* サイトの閲覧
* 会員新規登録機能
* 検索(商品名)

顧客側
【会員登録後】

* ログイン機能（メールアドレス、パスワードでログイン）
* ログアウト機能
* 退会機能
* 商品一覧、詳細
* 商品のカート追加機能
* カート内の商品の個数変更機能
* 商品購入機能
* マイページでの登録情報の変更、配送先の追加、注文履歴の確認機能
* 検索(商品名)

管理者側
* ログイン機能
* ログアウト機能
* 商品の新規登録、一覧、詳細、編集機能（販売ステータスの変更が可能）
* 会員の一覧、詳細、会員情報の編集機能、会員の注文履歴一覧
* 注文履歴の一覧、詳細、注文状況の編集機能（注文ステータス, 製作ステータスの切り替えが可能）
* 商品のジャンル設定
