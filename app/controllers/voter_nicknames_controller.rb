class VoterNicknamesController < ApplicationController
  def index
    @nicknames = Vote.preload(:user).all.map{|v| v.user.nickname}.uniq
  end
end
