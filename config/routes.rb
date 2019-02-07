Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users
      resources :garages
      resources :parkingspots
      resources :reservations
    end
  end
end
end

#askjf;alskdjf;laksjdf;lkjsa
