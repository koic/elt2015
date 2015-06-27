# apuri [![Circle CI](https://circleci.com/gh/yucao24hours/apuri/tree/master.svg?style=svg)](https://circleci.com/gh/yucao24hours/apuri/tree/master)

## 動作確認

GitHub アカウントを使ってログインする仕様のため、事前に GitHub でアプリケーションを作り、key と secret を取得してください。

```sh
$ git clone git@github.com:yucao24hours/apuri.git
$ cd apuri
$ bundle install
$ bundle exec rake db:setup db:migrate db:fixtures:load
$ cp config/application.yml.sample config/application.yml
```

その後、config/application.yml に 1. で取得した key と secret を追記してください。

```ruby
GITHUB_KEY: your key
GITHUB_SECRET: your secret
```
