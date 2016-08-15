Rails.application.routes.draw do
  resources :sessions, only: :new
  resources :topics, only: :new
  root 'topics#new'
end
