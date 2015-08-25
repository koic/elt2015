もし(/^"(.*?)" をクリックする$/) do |title|
  click_on title
end

もし(/^ランキングを表示する$/) do
  visit results_path
end

ならば(/^"(.*?)" へのコメント一覧ページが表示されていること$/) do |exhibit|
  expect(page).to have_content "「#{exhibit}」へのコメント"
end
