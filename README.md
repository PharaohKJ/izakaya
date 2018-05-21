# これは何か

飲み会を定期的に開催するとして

- 行く予定店を登録できる
- 候補を登録できる
- 行った店の
  - 点数をつけられる
  - タグがつけられる
  - 本会に向いてるか向いてないかレビューが少々かける
  - 最期に行った日がわかる
- ↑を考慮して次回の候補を教えてくれる
- 次回の日時場所を一発で表示してくれる
- 見るだけはGitHubログインしなくてもみられる

ってウェブページです。いまのところ Kanazawa.rb で使うことしか考えてません。

# 実行

ただの Ruby on Rails アプリです。bootstrap4を採用しているのでビューではそれを使うようにしてください。

GitHubログインのためのキーは環境変数経由か `.env` ファイル経由で渡してください。

```
$ git clone <this>
$ cd kzrb_izakaya
$ bundle install --path vendor/bundle
$ bundle exec rails s

```

``` .env
GITHUB_KEY=xxxxxxxxxxxxxxxxxxxx
GITHUB_SECRET=xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
```



# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
