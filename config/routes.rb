Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :api do 
    namespace :v1 do 

      resources :travelbugs, only: [:index, :show, :create, :update, :destroy] 
      resources :users, only: [:index] 
      resources :countries, only: [:index] 
      resources :comments, only: [:index] 
    end 
  end 
end
