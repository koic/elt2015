class RankingController < ApplicationController
  def index
    @foods = Food.by_rank
    @lts = LightningTalk.by_rank
  end
end
