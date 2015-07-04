class Exhibit::VotesController < ApplicationController
  permits :exhibit_id

  def new
    @vote = current_user.votes.new
    @foods = Food.all
    @lts = LightningTalk.all
  end

  def create(vote)
    @vote = current_user.votes.new(vote)

    if @vote.save
      redirect_to root_path, notice: '投票しました。'
    else
      @foods = Food.all
      @lts = LightningTalk.all
      render :new
    end
  end
end
