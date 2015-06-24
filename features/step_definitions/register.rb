もし(/^登録ページを表示する$/) do
  visit '/exhibits/new'
end

もし(/^タイトルに "(.*?)" と入力する$/) do |title|
  fill_in 'タイトル', with: title
end

もし(/^説明文に "(.*?)" と入力する$/) do |description|
  fill_in '説明', with: description
end

もし(/^種類として "(.*?)" を選択する$/) do |type|
  select type, from: '種類' 
end

もし(/^登録ボタンを押す$/) do
  click_on '登録する'
end
