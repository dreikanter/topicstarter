Rails.application.routes.draw do
  resources :topics, only: :new
  root 'topics#new'
end
