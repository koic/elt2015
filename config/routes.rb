Rails.application.routes.draw do
  root 'exhibits#index'

  get '/auth/:provider/callback/' => 'user_sessions#create'
  get 'signin' =>  'user_sessions#new'
  delete 'signout' => 'user_sessions#destroy'

  resources :exhibits, only: %i(new create show index)

  namespace :my do
    resources :exhibits, only: %i(index)
  end

  get :what_to_vote, to: 'user/votes#what_to_vote'
  scope module: :user do
    resources :votes, only: %i(new create)
  end
end
