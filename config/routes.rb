Rails.application.routes.draw do

  root 'sessions#new'
  get 'secrets/show', to: 'secrets#show'
  get 'application/user_page', to: 'application#user_page'
  post 'sessions/destroy', to: 'sessions#destroy'
  resources :sessions, only: [:new, :create]
end
