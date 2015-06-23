Rails.application.routes.draw do
  root 'welcome#index'

  get '/auth/:provider/callback/' => 'user_sessions#create'
  get 'signin' =>  'user_sessions#new'
  delete 'signout' => 'user_sessions#destroy'

  resources :exhibits, only: %i(new create show)
end
