Rails.application.routes.draw do

  root to: 'home#index'
  resources :players
  resources :teams
  resources :users

  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

end
