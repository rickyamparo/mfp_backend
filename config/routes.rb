Rails.application.routes.draw do
  root to: 'home#index'

  resources :users, only: [:create]
  resources :locations
  post 'authenticate', to: 'authentication#authenticate'
end
