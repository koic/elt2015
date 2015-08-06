class Exhibit::VotesController < ApplicationController
  permits :exhibit_id, :comment, model_name: 'VoteForm'

  def new
    @form = VoteForm.new(user_id: current_user.id)
    set_exhibits
  end

  def create(vote_form)
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
    @lts = LightningTalk.preload(:user).all
  end
end
