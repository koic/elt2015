# language: ja

フィーチャ:
  出品者として、自分の作品を登録したい。
  なぜなら、オーディエンスに見てもらったり、投票してもらったりするために必要だからだ。

  シナリオ: 作品のタイトルと説明文を登録できる
    前提 "sherlock" としてサインインしている

    もし 以下の内容で出品物を登録する:
      | タイトル             | 種別 | 説明文               |
      | 焼きたてアップルパイ | Food | 今朝焼いてきました！ |

    ならば "登録が完了しました。" というメッセージが表示されていること
