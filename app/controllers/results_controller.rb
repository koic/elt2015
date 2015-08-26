class ResultsController < ApplicationController
  before_action :basic_authentication unless Rails.env == 'test'

  def index
    @foods = Food.preload(:user).by_rank
    @lts = LightningTalk.preload(:user).by_rank
  end

  def show(id)
    @exhibit = Exhibit.find(id)
    @votes_with_comment = @exhibit.votes.includes(:user).select{|v| v.comment }
  end

  private

  def basic_authentication
    # NOTE: 結果公開後は basic 認証を外す
    return if results_opened?

    authenticate_or_request_with_http_basic('result') do |username, password|
      username == ENV['BASIC_AUTH_USERNAME'] && password == ENV['BASIC_AUTH_PASSWORD']
    end
  end
end
