class RankingController < ApplicationController
  def index
    @foods = Food.all
    @lts = LightningTalk.all
  end
end
