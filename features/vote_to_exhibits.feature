# language: ja

フィーチャ:
  オーディエンスとして、出品物に投票したい。
  なぜなら、自分の評価を出品者に届けたいからだ。

  シナリオ: 自分の作品だけが表示される
    前提 "sherlock" としてサインインしている
    かつ ユーザ "watson" がいる
    かつ ユーザ "molly" がいる
    かつ "sherlock" が作った料理 "肉じゃが" がある
    かつ "watson" が作った料理 "マッサマンカレー" がある
    かつ "molly" が作った料理 "フィッシュアンドチップス" がある

    もし 出品したいかたはこちらをクリックする
    かつ "食べ物" タブを表示する

    ならば 食べ物タブに "肉じゃが" が表示されていること
    かつ 食べ物タブに "マッサマンカレー" が表示されていないこと
    かつ 食べ物タブに "フィッシュアンドチップス" が表示されていないこと
