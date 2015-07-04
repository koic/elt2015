class UserSessionsController < ApplicationController
  before_action :require_login, only: %i(destroy)

  def new
  end

  def create
    binding.pry
    auth = request.env['omniauth.auth']
    user = User.find_by(provider: auth['provider'], uid: auth['uid']) || User.create_with_omniauth(auth)
    session[:user_id] = user.id
    redirect_to root_url, notice: 'サインインしました'
  end

  def destroy
    reset_session
    redirect_to signin_path, notice: 'サインアウトしました'
  end
end
