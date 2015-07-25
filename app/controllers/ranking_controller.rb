class RankingController < ApplicationController
  before_action :basic_authentication

  def total
    # TODO 総合優勝という概念がよくわからないので相談中

    # 総合優勝 == ◎◎王を決めるためのランキング
    # user.votes は、「その user が投票した票」を表すので、
    # 「その user が得た票」は、user.exhibits.map(&:vote) とかになるかな？

    # NOTE vote の user_id は、「それを投票した人（元の人）」なので、それで group するといいのかな
    # NOTE ほしいのは、{ exhibit_id: それに投票してくれた user の人数 } というハッシュ

    # NOTE まず、ランキングで知りたいのは「誰が」何位だったか、であり、「何の出品物が」何位だったか、ではない。
    #      そのため、出品者ごと（出品物ごとではない！）にまず票をわけて、その中で、「その票を入れた人」が重複しない形にしてあげる。

    # @rankings = user.exhibits.each do |exhibit|
    #   exhibit.votes.group_by {|v| v.exhibit_id }
    # end
  end

  def by_type
    @foods = Food.preload(:user).by_rank
    @lts = LightningTalk.preload(:user).by_rank
  end

  private

  def basic_authentication
    authenticate_or_request_with_http_basic('ranking') do |username, password|
      username == ENV['RANKING_USERNAME'] && password == ENV['RANKING_PASSWORD']
    end
  end
end
