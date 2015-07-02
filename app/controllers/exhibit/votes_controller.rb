class Exhibit::VotesController < ApplicationController
  permits :exhibit_id

  def new
    @vote = current_user.votes.new
    @exhibits = Exhibit.where(type: 'LightningTalk')
  end

  def create(vote)
    @vote = current_user.votes.new(vote)

    if @vote.save
      redirect_to root_path, notice: '投票しました。'
    else
      @exhibits = Exhibit.where(type: 'LightningTalk')
      render :new
    end
  end
end
