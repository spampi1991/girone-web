Rails.application.routes.draw do
  scope '/admin' do
    resources :players
    resources :teams
  end
end
