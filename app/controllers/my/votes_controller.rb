class My::VotesController < ApplicationController
  permits :comment

  def index
    @votes = current_user.votes.preload(exhibit: :user)
  end

  def edit(id)
    @vote = current_user.votes.find(id)
  end

  def update(id, vote)
    @vote = current_user.votes.find(id)

    if @vote.update(vote)
      redirect_to my_votes_path, notice: '更新しました。'
    else
      render :edit
    end
  end

  def destroy(id)
    vote = current_user.votes.find(id)
    vote.destroy

    redirect_to my_votes_path, notice: '削除しました。'
  end
end
