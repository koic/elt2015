class ResultsController < ApplicationController
  before_action :basic_authentication

  def index
    @foods = Food.preload(:user).by_rank
    @lts = LightningTalk.preload(:user).by_rank
  end

  private

  def basic_authentication
    authenticate_or_request_with_http_basic('ranking') do |username, password|
      username == ENV['RANKING_USERNAME'] && password == ENV['RANKING_PASSWORD']
    end
  end
end
