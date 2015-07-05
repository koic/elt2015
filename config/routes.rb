Rails.application.routes.draw do
  root 'exhibits#index'

  get '/auth/:provider/callback', to: 'user_sessions#create'
  get 'signin',                   to: 'user_sessions#new'
  delete 'signout',               to: 'user_sessions#destroy'

  resources :exhibits, only: %i(new create show index)

  namespace :my do
    resources :exhibits, only: %i(index)
  end

  scope module: :exhibit do
    resources :votes, only: %i(new create)
  end
end
