class Exhibit::VotesController < ApplicationController
  permits :exhibit_id

  def new
    @vote = current_user.votes.new
    set_exhibits
  end

  def create(vote)
    @vote = current_user.votes.new(vote)

    if @vote.save
      redirect_to root_path, notice: '投票しました。'
    else
      set_exhibits
      render :new
    end
  end

  private

  def set_exhibits
    @foods = Food.preload(:user).all
    @lts = LightningTalk.preload(:user).all
  end
end
