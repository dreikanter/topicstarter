Rails.application.routes.draw do
  resources :sessions, only: [:new, :show], param: :secret
  resources :topics, only: :new
  root 'topics#new'
end
