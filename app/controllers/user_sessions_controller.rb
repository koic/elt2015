class UserSessionsController < ApplicationController
  skip_before_action :require_login

  def new
  end

  def create
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
