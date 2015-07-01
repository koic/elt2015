class User::VotesController < ApplicationController
  permits :exhibit_id

  def new
    @vote = current_user.votes.new
  end

  def create(vote)
    # TODO exhibit_id が存在しないものを参照してほしくない。。
    #      今あるものをリスト化してそこから選んでもらうようにすれば平気だと思うけど、
    #      「存在しない ID を入れられたらエラーにする」みたいなことしたほうがいいのかな。。
    @vote = current_user.votes.new(vote.merge(user_id: current_user.id))

    if @vote.save
      # TODO リダイレクト先とメッセージは未定のためてきとう
      redirect_to exhibits_path, notice: '投票が完了しました。'
    else
      render :new
    end
  end

  def what_to_vote
  end
end
