class RankingController < ApplicationController
  def total
    # 総合優勝 == ◎◎王を決めるためのランキング
  end

  def by_type
    @foods = Food.by_rank
    @lts = LightningTalk.by_rank
  end
end
