Rails.application.routes.draw do
  namespace :admin do
    resources :players
    resources :teams
  end
end
