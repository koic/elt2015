# language: ja

フィーチャ:
  出品者として、自分の作品を更新したい。
  なぜなら、かっこいいタイトルや説明を思いついたら、すぐに変更してアピールしたいからだ。

  シナリオ: 作品のタイトルと説明文を更新できる
    前提 以下の内容で出品物を登録する:
      | タイトル             | 種別 | 説明文               | ユーザ   |
      | 焼きたてアップルパイ | Food | 今朝焼いてきました！ | sherlock |

    もし あなたの出品一覧を表示する
    かつ "食べ物" タブを表示する
    かつ "焼きたてアップルパイ" のタイトルをクリックする

    ならば "焼きたてアップルパイ" の編集画面が表示されていること

    もし 以下の内容で更新する:
      | タイトル             | 種別 | 説明文                     |
      | おいしいアップルパイ | Food | 超おすすめ！絶対たべてね。 |

    ならば "更新しました。" というメッセージが表示されていること
    かつ 食べ物タブに "おいしいアップルパイ" が表示されていること
