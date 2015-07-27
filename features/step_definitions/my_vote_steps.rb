def find_vote_by_title(title)
  all('.my-votes-table__body').find{|e| e.first('.my-vote__exhibit-title', text: /\A#{title}/)}
end

もし(/^自分が投票したもの一覧を表示する$/) do
  click_on '投票一覧'
end

ならば(/^"(.*?)" のコメント欄に "(.*?)" と表示されていること$/) do |title, comment|
  vote = find_vote_by_title(title)

  within vote do
    within '.my-vote__comment-for-exhibit' do
      expect(page).to have_content(comment)
    end
  end
end
