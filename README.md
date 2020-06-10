
# House Work Quest
このアプリは、お子さんに「家事を楽しく手伝ってもらう事」を目的としたアプリです。
![top](https://user-images.githubusercontent.com/63326271/84291890-ab84eb80-ab80-11ea-98df-bb8050bd6519.jpg)

# 使い方
![4f50c4cff3a77e312dba38c37fa9b12f](https://user-images.githubusercontent.com/63326271/84291012-7b891880-ab7f-11ea-84c8-fc33ca381eeb.gif)

こちらのマイページをお子さんに見せて、クエスト(お手伝いしたい家事)を
決めてもらいます。
完了したら、クエストクリアボタンをクリックして、完了画面に変更できます。

# 本番環境
URL:http://18.181.137.208/

閲覧の際は、通常のユーザー登録・ログイン機能によるご確認のほか、
ログインページの「簡単ログイン」ボタンから、テストユーザーアカウントによるご確認もご利用いただけます。

# 機能一覧:

## クエスト
- クエストの新規投稿機能
- クエストの完了報告機能

## ユーザー
- 認証機能
- 簡単ログイン機能
- マイページ機能

## アプリケーション構成図
![houseworkquest](https://user-images.githubusercontent.com/63326271/84290118-4203dd80-ab7e-11ea-927d-85d4b9b66937.jpg)

## インフラ
- AWS(EC2)
- MySQL2
- Nginx(WEBサーバ)
- Capistrano(自動デプロイ)

# テスト
- モデル、コントローラーでの単体テスト(6/9実装)
- rubocop(6/2実装)

# 使用技術一覧:
- Sass(scss)
- Hmal
- HTML/CSS
- Javascript / jQuery

## 開発環境
- ruby 2.5.1
- Rails 5.2.3

# 今後について
今後、順次実装していきます。

## 実装予定の機能
- 画像投稿機能
- 各SNSログイン機能
- 報酬ポイントを計算する機能
- クエスト完了後の評価機能

## テスト
- CircleCI
- 結合テスト

