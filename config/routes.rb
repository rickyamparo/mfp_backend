Rails.application.routes.draw do
  resources :locations
  post 'authenticate', to: 'authentication#authenticate'
end
