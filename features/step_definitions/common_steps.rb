もし(/^トップページを表示する$/) do
  visit '/'
end

もし(/^出品したいかたはこちらをクリックする$/) do
  click_on '出品したいかたはこちら'
end

もし(/^"(.*?)" タブを表示する$/) do |tab|
  click_on tab
end

ならば(/^"(.*?)" というメッセージが表示されていること$/) do |message|
  expect(page).to have_css '.alert-box', text: message
end
