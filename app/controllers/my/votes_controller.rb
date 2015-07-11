class My::VotesController < ApplicationController
  def index
    @votes = current_user.votes.preload(exhibit: :user)
  end
end
