Rails.application.routes.draw do
  root to: 'home#index'

  resources :users, only: [:create]
  resources :locations
  post 'authenticate', to: 'authentication#authenticate'

  namespace :api do
    namespace :v1 do
    end
  end

  get '/api/v1/business_intelligence/most_visited/',
  :to => 'api/v1/business_intelligence#most_visited'

  get '/api/v1/business_intelligence/least_visited/',
  :to => 'api/v1/business_intelligence#least_visited'

  get '/api/v1/business_intelligence/favorite_weekday/',
  :to => 'api/v1/business_intelligence#favorite_weekday'

  get '/api/v1/business_intelligence/favorite_weekend/',
  :to => 'api/v1/business_intelligence#favorite_weekend'

  get '/api/v1/day_name/most_popular/',
  :to => 'api/v1/day_name#most_popular'

  get '/api/v1/day_name/least_popular/',
  :to => 'api/v1/day_name#least_popular'

  get '/api/v1/day_number/most_popular/',
  :to => 'api/v1/day_number#most_popular'

end
