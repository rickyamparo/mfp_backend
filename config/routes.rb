Rails.application.routes.draw do
  root to: 'home#index'

  resources :users, only: [:create]
  resources :locations
  post 'authenticate', to: 'authentication#authenticate'

  namespace :api do
    namespace :v1 do
      get '/business_intelligence/most_visited',
       :to => '/business_intelligence#most_visited'

       get '/business_intelligence/least_visited',
        :to => '/business_intelligence#least_visited'
    end
  end
end
