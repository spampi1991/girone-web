Rails.application.routes.draw do

  root to: "home#index"

  scope '/admin' do
    resources :players
    resources :teams
  end
end
