class Exhibit::VotesController < ApplicationController
  permits :exhibit_id, :comment, model_name: 'VoteForm'

  def new
    redirect_to_my_votes_when_vote_stopping

    @form = VoteForm.new(user_id: current_user.id)
    set_exhibits
  end

  def create(vote_form)
    redirect_to_my_votes_when_vote_stopping

    @form = VoteForm.new(vote_form.merge(user_id: current_user.id))

    if @form.save
      redirect_to my_votes_path, notice: '投票しました。'
    else
      set_exhibits
      render :new
    end
  end

  private

  def set_exhibits
    @foods = Food.preload(:user).all
    @lts = LightningTalk.preload(:user).announce_order.all
  end

  def redirect_to_my_votes_when_vote_stopping
    # NOTE: /admin から操作して stop を切り替える想定
    if vote_stoped?
      redirect_to my_votes_path, notice: '投票期間は終了いたしました。発表をお待ちください'
      return
    end
  end
end
