もし(/^投票ページを表示する$/) do
  click_on '投票する'
end

もし(/^"(.*?)" にチェックを入れる$/) do |exhibit|
  foo = Exhibit.find_by(title: exhibit)
  choose "vote_exhibit_id_#{foo.id}"
end

もし(/^投票するボタンを押す$/) do
  click_on '投票する'
end

もし(/^"(.*?)" とコメントする$/) do |comment|
  fill_in 'コメント', with: comment
end
