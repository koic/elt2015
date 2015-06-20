Rails.application.routes.draw do
  root 'welcome#index'

  resources :exhibits, only: %i(new create show)
end
