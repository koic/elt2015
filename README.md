# elt2015 [![Circle CI](https://circleci.com/gh/yucao24hours/elt2015.svg?style=svg)](https://circleci.com/gh/yucao24hours/elt2015) [![Stories in Ready](https://badge.waffle.io/yucao24hours/elt2015.png?label=ready&title=Ready)](https://waffle.io/yucao24hours/elt2015)

## 動作確認

GitHub アカウントを使ってログインする仕様のため、事前に GitHub でアプリケーションを作り、key と secret を取得してください。

- Authorization callback URL ... `http://localhost:3000/auth/github/callback`

その後、セットアップします：

```sh
$ git clone git@github.com:yucao24hours/elt2015.git
$ cd elt2015
$ bundle install
$ （必要に応じて cp config/database.yml.sample config/database.yml をして設定する）
$ bundle exec rake db:setup db:migrate db:fixtures:load
$ cp config/application.yml.sample config/application.yml
```

セットアップが終わったら、config/application.yml に 1. で取得した key と secret をそれぞれ `GITHUB_KEY` と `GITHUB_SECRET` に追記してください。

```ruby
# application.yml
GITHUB_KEY: your key
GITHUB_SECRET: your secret
BASIC_AUTH_USERNAME: username
BASIC_AUTH_PASSWORD: password
TWITTER_KEY: your_twitter_key
TWITTER_SECRET: your_twitter_secret
```

※ Twitter アカウントを用いたサインインもできるようにしていますが、こちらは例外的なケースのみで使用することにしています。そのため、動作確認が必要であるなどのケースでない限り セットアップは GitHub のほうだけでかまいません。
