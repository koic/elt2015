もし(/^トップページを表示する$/) do
  visit '/'
end

もし(/^出品者メニューを表示する$/) do
  click_on '出品者メニュー'
end

もし(/^"(.*?)" タブを表示する$/) do |tab|
  click_on tab
end

ならば(/^"(.*?)" というメッセージが表示されていること$/) do |message|
  expect(page).to have_css '.alert-box', text: message
end
