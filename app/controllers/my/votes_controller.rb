class My::VotesController < ApplicationController
  def index
    @votes = current_user.votes.preload(exhibit: :user)
  end

  def destroy(id)
    vote = current_user.votes.find(id)
    vote.destroy

    redirect_to my_votes_path, notice: '削除しました。'
  end
end
