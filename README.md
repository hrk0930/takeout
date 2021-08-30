## アプリケーション概要 
### お店側
1. 登録すれば簡単にテイクアウトメニューを出品することができる

### 消費者
1.登録不要<br>
2.お店の人が載せたメニューから食べたいメニューを選び注文することができる<br>
3.お店を選んでお店のテイクアウトメニューを選び注文することもできる

## URL	
[https://takeout-36240.herokuapp.com/](URL)

## テスト用アカウント	
### お店側
1. メールアドレス 11111@icloud.com
2. パスワード    111111

## 利用方法	
### お店側
1. トップ画面の下にあるcopyrightを押せば新規登録ページに遷移されるので登録を行う<br>
2. 画面中央のdeliy fooまたは画面右上のアイコンを押せば次のページに遷移される<br>
3. 画面のおつかれさまですの横のアイコンを押せばメニュー投稿のページに遷移される<br>
4. メニューが投稿されればお店,メニュー 一覧画面に遷移される<br>
5. お店,メニュー の情報は後々編集したりすることができる<br>


### 消費者
1.画面中央のdeliy fooまたは画面右上のアイコンを押せば次のページに遷移される<br>
2.お店の人が載せたメニューから食べたいメニューを選び注文することができる<br>
3.お店を選んでお店のテイクアウトメニューを選び注文することもできる


### トップ画面
[![Image from Gyazo](https://i.gyazo.com/c8043ae3d4af7e48417f6d230802b1c7.jpg)](https://gyazo.com/c8043ae3d4af7e48417f6d230802b1c7)

### お店,メニュー 一覧画面
[![Image from Gyazo](https://i.gyazo.com/f6ade363872f2ba6f9460cf4e0ce1f5e.gif)](https://gyazo.com/f6ade363872f2ba6f9460cf4e0ce1f5e)

### 新規登録 ログイン画面

1. ユーザーの新規登録ページ
[![Image from Gyazo](https://i.gyazo.com/7c58813a4b54fe9f64fa856e80d59e42.gif)](https://gyazo.com/7c58813a4b54fe9f64fa856e80d59e42)
2. ユーザーログインページ
[![Image from Gyazo](https://i.gyazo.com/658e7bd228f38da11380d68e1e0438d6.png)](https://gyazo.com/658e7bd228f38da11380d68e1e0438d6)


### お店側のログイン後のトップ画面
[![Image from Gyazo](https://i.gyazo.com/a32ecf0425c224eaedddea5a1dff97ae.gif)](https://gyazo.com/a32ecf0425c224eaedddea5a1dff97ae)

### 消費者側のログイン後のトップ画面
[![Image from Gyazo](https://i.gyazo.com/840d63a468a48f7a05a84100d0a935f5.gif)](https://gyazo.com/840d63a468a48f7a05a84100d0a935f5)

### ログイン後のトップ画面一覧
[![Image from Gyazo](https://i.gyazo.com/e3994a3c0eb12d6b3c83249927b2a2a9.gif)](https://gyazo.com/e3994a3c0eb12d6b3c83249927b2a2a9)

### お店を選んで遷移するページ
[![Image from Gyazo](https://i.gyazo.com/f504a3fbee03dbd23d1ab2d78a6440ce.gif)](https://gyazo.com/f504a3fbee03dbd23d1ab2d78a6440ce)

### メニューを選んで遷移するページ
[![Image from Gyazo](https://i.gyazo.com/2cc96b50aa46a8058215c087ab3ccc4b.gif)](https://gyazo.com/2cc96b50aa46a8058215c087ab3ccc4b)

### メニューを選んで遷移されたページからお店情報に遷移されるページ
[![Image from Gyazo](https://i.gyazo.com/cd1ce49526c5fffc578b1e37c4dd827f.gif)](https://gyazo.com/cd1ce49526c5fffc578b1e37c4dd827f)





<br>
<br>
<br>

## 工夫した点
1.cssで見た身を重点的に意識し考えて作りました<br>
2.完成した後にトップページをプラスして作りました<br>



<br>
<br>
<br>


## 使用技術(開発環境)

### バックエンド
Ruby, Ruby on Rails

### フロントエンド
Html, css

### フロントエンド
Html, css

### データベース
MYSQL SequelPro
### インフラ
heroku

### ソース管理
GitHub, GitHubDesktop

### エディタ
VSCode


<br>
<br>
<br>


# 課題や今後実装したい機能 
## 課題
1. 登録時に登録記述内容が不十分でも引き返されるが<br>
エラーメッセージが表記されないのでどこの記述が不十分なのかが分からない<br>

2. バリデーションが不充分なので全角数字で登録した時<br>
通過はするがうまく反映されない

## 今後実装したい機能
1. 消費者側からの注文がそのボタンを押せば
そこから電話がかけられるようにしたい








## users テーブル

|       Column         | Type          | Options          |
| -------------------- | ------------- | ---------------- |
|   email              |  string       |  null:false      |
|   password           |  string       |  null:false      |
|   name               |  string       |  null:false      |
|   e_mail             |  text         |  null:false      |
|   access             |  text         |  null:false      |
|   holiday            |  string       |  null:false      |
|   word               |  text         |  null:false      |
###   Association
- has_many :menus







## menus テーブル

|       Column         | Type          | Options          |
| -------------------- | ------------- | ---------------- |
|  name                |  string       |  null:false      |
|  price               |  integer      |  null:false      |
|  profile             |  text         |  null:false      |
|  user                |  references   |                  |

### Association
- belongs_to :user