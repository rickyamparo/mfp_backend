Rails.application.routes.draw do
  root to: 'home#index'
  
  resources :locations
  post 'authenticate', to: 'authentication#authenticate'
end
