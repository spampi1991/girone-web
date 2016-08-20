Rails.application.routes.draw do

  root to: 'home#index'
  resources :players
  resources :teams
  resources :users

  get '/signup', to: 'users#new'

end
